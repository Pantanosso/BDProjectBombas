import java.io.*;
import java.util.Scanner;

public class ClientCSV {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String filename = "clients.csv";
        int nextId = 1;

        // Comprobar si el archivo existe y buscar el último id
        File file = new File(filename);
        if (file.exists()) {
            try (BufferedReader br = new BufferedReader(new FileReader(filename))) {
                String line;
                int maxId = 0;
                br.readLine(); // Saltar cabecera
                while ((line = br.readLine()) != null) {
                    if (!line.trim().isEmpty()) {
                        String[] parts = line.split(",");
                        try {
                            int id = Integer.parseInt(parts[0]);
                            if (id > maxId) maxId = id;
                        } catch (NumberFormatException e) {
                            // Ignorar línea malformada
                        }
                    }
                }
                nextId = maxId + 1;
            } catch (IOException e) {
                System.err.println("Error leyendo archivo: " + e.getMessage());
                return;
            }
        } else {
            // Crear archivo con cabecera si no existe
            try (PrintWriter pw = new PrintWriter(new FileWriter(filename, true))) {
                pw.println("id_cliente,nom,mail,genere,es_alergen");
            } catch (IOException e) {
                System.err.println("Error creando archivo: " + e.getMessage());
                return;
            }
        }

        System.out.println("Introduce datos de clientes. Escribe 'sortir' en nombre para terminar.");

        while (true) {
            System.out.println("ID del client (auto): " + nextId);

            System.out.print("Nom: ");
            String nom = scanner.nextLine();
            if (nom.trim().equalsIgnoreCase("sortir")) {
                System.out.println("Finalizando entrada de datos.");
                break;
            }

            System.out.print("Email: ");
            String mail = scanner.nextLine();

            System.out.print("Gènere (M/F/Altres): ");
            String genere = scanner.nextLine();

            System.out.print("És al·lèrgic? (1=Sí, 0=No): ");
            String esAlergen = scanner.nextLine();

            String linea = String.join(",", String.valueOf(nextId), nom, mail, genere, esAlergen);
            System.out.println("\nDades a desar: " + linea);

            System.out.print("Desar? (s/n): ");
            String confirm = scanner.nextLine().trim().toLowerCase();

            if (confirm.equals("s")) {
                try (PrintWriter pw = new PrintWriter(new FileWriter(filename, true))) {
                    pw.println(linea);
                    System.out.println("Desat correctament!\n");
                    nextId++;
                } catch (IOException e) {
                    System.err.println("Error al escriure al fitxer: " + e.getMessage());
                }
            } else {
                System.out.println("No s'ha desat.\n");
            }
        }
        scanner.close();
    }
}