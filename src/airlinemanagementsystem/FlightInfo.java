package airlinemanagementsystem;

import javax.swing.*;
import java.awt.*;
import java.sql.*;
import net.proteanit.sql.DbUtils;
import javax.swing.table.TableCellRenderer;

public class FlightInfo extends JFrame {

    public FlightInfo() {

        // getContentPane().setBackground(Color.WHITE);
        // setLayout(null);

        setLayout(new BorderLayout());

        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("airlinemanagementsystem/icons/flightinfo4.jpg"));
        Image i2 = i1.getImage().getScaledInstance(200, 400, Image.SCALE_SMOOTH);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel imageLabel = new JLabel(i3);

        add(imageLabel, BorderLayout.WEST);

        JTable table = new JTable() {
            public Component prepareRenderer(TableCellRenderer renderer, int row, int column) {
                Component c = super.prepareRenderer(renderer, row, column);
                
                // Alternate row color
                if (!isRowSelected(row))
                    c.setBackground(row % 2 == 0 ? getBackground() : Color.ORANGE);

                return c;
            }
        };

        add(new JScrollPane(table), BorderLayout.CENTER);

        try {
            Conn conn = new Conn();

            ResultSet rs = conn.s.executeQuery("select * from flight");
            table.setModel(DbUtils.resultSetToTableModel(rs));
        } catch (Exception e) {
            e.printStackTrace();
        }

        JScrollPane jsp = new JScrollPane(table);
        jsp.setBounds(0, 0, 800, 500);
        add(jsp);

        setSize(800, 500);
        setLocation(400, 200);
        setVisible(true);
    }

    public static void main(String[] args) {
        new FlightInfo();
    }
}
