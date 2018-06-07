package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_itinerarios")
@SequenceGenerator(name = "ITINERARIO_PK", sequenceName = "SEQ_ITINERARIO_PK", allocationSize = 1)
public class Itinerario {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ITINERARIO_PK")
	private Integer idItinerario;

	@Column(name = "TERMINAL_1", length = 255, nullable = false)
	private String terminal1;

	@Column(name = "TERMINAL_2", length = 255, nullable = true)
	private String terminal2;

	public Itinerario() {
		super();

	}

	public Itinerario(Integer idItinerario, String terminal1, String terminal2) {
		super();
		this.idItinerario = idItinerario;
		this.terminal1 = terminal1;
		this.terminal2 = terminal2;
	}

	public Integer getIdItinerario() {
		return idItinerario;
	}

	public void setIdItinerario(Integer idItinerario) {
		this.idItinerario = idItinerario;
	}

	public String getTerminal1() {
		return terminal1;
	}

	public void setTerminal1(String terminal1) {
		this.terminal1 = terminal1;
	}

	public String getTerminal2() {
		return terminal2;
	}

	public void setTerminal2(String terminal2) {
		this.terminal2 = terminal2;
	}

}
