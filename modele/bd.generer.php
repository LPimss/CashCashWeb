<?php
    require_once("./library/TCPDF/tcpdf.php");
    
        
        class MYPDF extends TCPDF {
            
            // Load table data from file
            public function LoadData($id_inter) {
                include_once("modele/generer.php");
                $result = $ModelePDF->GenererPDF($id_inter);
                return $result;
            }
        
            // Colored table
            public function InterventionsTable($header,$data) {
                // Colors, line width and bold font
                $this->SetFillColor(255, 0, 0);
                $this->SetTextColor(255);
                $this->SetDrawColor(128, 0, 0);
                $this->SetLineWidth(0.3);
                $this->SetFont('', 'B');
                // Header
                $w = array(40, 35, 35, 40, 40);
                $num_headers = count($header);
                for($i = 0; $i < $num_headers; ++$i) {
                    $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
                }
                $this->Ln();
                // Color and font restoration
                $this->SetFillColor(224, 235, 255);
                $this->SetTextColor(0);
                $this->SetFont('');
                // Data
                $fill = 0;
                foreach($data as $row) {
                    $this->Cell($w[0], 6, $row["numero_intervention"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[1], 6, $row["date_visite"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[2], 6, $row["heure_visite"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[3], 6, $row["numero_client"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[4], 6, $row["matricule"], 'LR', 0, 'L', $fill);
                    $this->Ln();
                    $fill=!$fill;
                }
                $this->Cell(array_sum($w), 0, '', 'T');
            }
        
            // Intervention Materiel table
            public function ControlersTable($header,$data) {
                // Colors, line width and bold font
                $this->SetFillColor(0, 196, 0);
                $this->SetTextColor(255);
                $this->SetDrawColor(0, 128, 0);
                $this->SetLineWidth(0.3);
                $this->SetFont('', 'B');
                // Header
                $w = array(35, 35, 55, 65);
                $num_headers = count($header);
                for($i = 0; $i < $num_headers; ++$i) {
                    $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
                }
                $this->Ln();
                // Color and font restoration
                $this->SetFillColor(224, 235, 255);
                $this->SetTextColor(0);
                $this->SetFont('');
                // Data
                $fill = 0;
                foreach($data as $row) {
                    $this->Cell($w[0], 6, $row["numero_de_serie"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[1], 6, $row["numero_intervention"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[2], 6, $row["temps_passe"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[3], 6, $row["commentaire"], 'LR', 0, 'L', $fill);
                    
                    $this->Ln();
                    $fill=!$fill;
                }
                $this->Cell(array_sum($w), 0, '', 'T');
            }
        
            // Materiel table
            public function MaterielsTable($header,$data) {
                // Colors, line width and bold font
                $this->SetFillColor(0, 0, 255);
                $this->SetTextColor(255);
                $this->SetDrawColor(0, 0, 128);
                $this->SetLineWidth(0.3);
                $this->SetFont('', 'B');
                // Header
                $w = array(35, 40, 45, 40, 30);
                $num_headers = count($header);
                for($i = 0; $i < $num_headers; ++$i) {
                    $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
                }
                $this->Ln();
                // Color and font restoration
                $this->SetFillColor(224, 235, 255);
                $this->SetTextColor(0);
                $this->SetFont('');
                // Data
                $fill = 0;
                foreach($data as $row) {
                    $this->Cell($w[0], 6, $row["numero_de_serie"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[1], 6, $row["date_d_installation"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[2], 6, $row["emplacement"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[3], 6, $row["numero_de_contrat"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[4], 6, $row["reference_interne"], 'LR', 0, 'L', $fill);
                    
                    $this->Ln();
                    $fill=!$fill;
                }
                $this->Cell(array_sum($w), 0, '', 'T');
            }
        
            //  Type Materiel table
            public function TypeMaterielsTable($header,$data) {
                // Colors, line width and bold font
                $this->SetFillColor(0, 0, 0);
                $this->SetTextColor(255);
                $this->SetDrawColor(0, 0, 0);
                $this->SetLineWidth(0.3);
                $this->SetFont('', 'B');
                // Header
                $w = array(95, 95);
                $num_headers = count($header);
                for($i = 0; $i < $num_headers; ++$i) {
                    $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
                }
                $this->Ln();
                // Color and font restoration
                $this->SetFillColor(224, 235, 255);
                $this->SetTextColor(0);
                $this->SetFont('');
                // Data
                $fill = 0;
                foreach($data as $row) {
                    $this->Cell($w[0], 6, $row["reference_interne"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[1], 6, $row["libelle_type"], 'LR', 0, 'L', $fill);
                    
                    $this->Ln();
                    $fill=!$fill;
                }
                $this->Cell(array_sum($w), 0, '', 'T');
            }
        
            // Clients table
            public function ClientsTable($header,$data) {
                // Colors, line width and bold font
                $this->SetFillColor(0, 200, 200);
                $this->SetTextColor(255);
                $this->SetDrawColor(0, 0, 0);
                $this->SetLineWidth(0.3);
                $this->SetFont('', 'B');
                // Header
                $w = array(70, 60, 60);
                $num_headers = count($header);
                for($i = 0; $i < $num_headers; ++$i) {
                    $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
                }
                $this->Ln();
                // Color and font restoration
                $this->SetFillColor(224, 235, 255);
                $this->SetTextColor(0);
                $this->SetFont('');
                // Data
                $fill = 0;
                foreach($data as $row) {
                    $this->Cell($w[0], 6, $row["numero_client"], 'LR', 0, 'L', $fill);                    
                    $this->Cell($w[1], 6, $row["numero_agence"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[2], 6, $row["distanceKM"], 'LR', 0, 'L', $fill);
                    
                    $this->Ln();
                    $fill=!$fill;
                }
                $this->Cell(array_sum($w), 0, '', 'T');
            }

            public function ClientsTable1($header,$data) {
                // Colors, line width and bold font
                $this->SetFillColor(0, 200, 200);
                $this->SetTextColor(255);
                $this->SetDrawColor(0, 0, 0);
                $this->SetLineWidth(0.3);
                $this->SetFont('', 'B');
                // Header
                $w = array(80, 30, 80);
                $num_headers = count($header);
                for($i = 0; $i < $num_headers; ++$i) {
                    $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
                }
                $this->Ln();
                // Color and font restoration
                $this->SetFillColor(224, 235, 255);
                $this->SetTextColor(0);
                $this->SetFont('');
                // Data
                $fill = 0;
                foreach($data as $row) {
                    $this->Cell($w[0], 6, $row["adresse"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[1], 6, $row["telephone_client"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[2], 6, $row["email"], 'LR', 0, 'L', $fill);
                    
                    $this->Ln();
                    $fill=!$fill;
                }
                $this->Cell(array_sum($w), 0, '', 'T');
            }
        
            // Technicien table
            public function TechniciensTable($header,$data) {
                // Colors, line width and bold font
                $this->SetFillColor(200, 200, 0);
                $this->SetTextColor(255);
                $this->SetDrawColor(0, 0, 0);
                $this->SetLineWidth(0.3);
                $this->SetFont('', 'B');
                // Header
                $w = array(40, 45, 50, 55);
                $num_headers = count($header);
                for($i = 0; $i < $num_headers; ++$i) {
                    $this->Cell($w[$i], 7, $header[$i], 1, 0, 'C', 1);
                }
                $this->Ln();
                // Color and font restoration
                $this->SetFillColor(224, 235, 255);
                $this->SetTextColor(0);
                $this->SetFont('');
                // Data
                $fill = 0;
                foreach($data as $row) {
                    $this->Cell($w[0], 6, $row["matricule"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[1], 6, $row["telephone_mobile"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[2], 6, $row["numero_agence"], 'LR', 0, 'L', $fill);
                    $this->Cell($w[3], 6, $row["qualification"], 'LR', 0, 'L', $fill);
        
                    $this->Ln();
                    $fill=!$fill;
                }
                $this->Cell(array_sum($w), 0, '', 'T');
            }
        }
        
        // create new PDF document
        $pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        
        $idIntervention = $_POST['numero_intervention'];
        
        // set font
        $pdf->SetFont('helvetica', '', 12);
        
        // add a page
        $pdf->AddPage();
        
        // Interventions
        
        $html = '<br><h1 style="text-align:center">CashCash</h1><br>
        <h3>Interventions :</h3>';
        $pdf->writeHTML($html, true, false, true, false, '');
        $header = array('ID Intervention', 'Date', 'Heure', 'Numero Client', 'Matricule Employe');
        $data = $pdf->LoadData($idIntervention);
        $pdf->InterventionsTable($header, $data);
        
        // // Controlers
        
        $html = "<br><br><br><h3>Controlers :</h3>";
        $pdf->writeHTML($html, true, false, true, false, '');
        
        $header = array('ID Materiel', 'ID Intervention', 'Temps passe', 'Commentaire');
        
        $pdf->ControlersTable($header, $data);
        
        // // Materiels
        
        $html = "<br><br><br><h3>Materiels :</h3>";
        $pdf->writeHTML($html, true, false, true, false, '');
        
        $header = array('ID Materiel', 'Date Installation', 'Emplacement', 'Numero Contrat', 'Type ID');
        $pdf->MaterielsTable($header, $data);
        
        // // Materiels Type
        
        $html = "<br><br><br><h3>Type Materiels  :</h3>";
        $pdf->writeHTML($html, true, false, true, false, '');
        
        $header = array('ID Materiel Type', 'Reference');
        $pdf->TypeMaterielsTable($header, $data);
        
        // // Techniciens
        
        $html = "<br><br><br><h3>Techniciens :</h3>";
        $pdf->writeHTML($html, true, false, true, false, '');
        $header = array('Matricule', 'Telephone', 'Agence', 'Qualification');
        $pdf->TechniciensTable($header, $data);
        
        // // ---------------------------------------------------------

        // // Clients
        
        $html = "<br><br><h3>Clients :</h3>";
        $pdf->writeHTML($html, true, false, true, false, '');
        
        $header = array('Numéro', 'Agence', 'Nb km');
        $pdf->ClientsTable($header, $data);

        $html = "<br>";
        $pdf->writeHTML($html, true, false, true, false, '');

        $header = array('Adresse', 'Telephone', 'Email');
        $pdf->ClientsTable1($header, $data);
        
        // ---------------------------------------------------------
        // close and output PDF document
        $pdf->Output('fiche_intervention.pdf', 'I');
        
        //============================================================+
        // END OF FILE
        //============================================================+
