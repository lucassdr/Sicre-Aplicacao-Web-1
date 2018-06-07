package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_onibus")
@SequenceGenerator(name = "ONIBUS_PK", sequenceName = "SEQ_ONIBUS_PK", allocationSize = 1)
public class Onibus {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ONIBUS_PK")
	private Integer idOnibus;

	@Column(name = "IDENTIFICACAO_ESTADUAL", length = 10, nullable = false, unique = true)
	private String identEstadualUnica;

	@Column(name = "LIBERACAO_ESTADUAL", length = 100, nullable = false)
	private String liberacaoEstadual;

	@Column(name = "LIBERACAO_MUNICIPAL", length = 100, nullable = false)
	private String liberacaoMunicipal;

	@Column(name = "NUMERO_CHASSI", length = 17, nullable = false, unique = true)
	private String numeroChassi;

	@Column(name = "PLACA", length = 7, nullable = false, unique = true)
	private String placa;

	@Column(name = "DATA_FABRICACAO", length = 10, nullable = false)
	private String dataFabricacao;

	@Column(name = "QTD_PASSAGEIROS_SENTADOS", nullable = false)
	private Integer qtdPassageirosSentados;

	@Column(name = "QTD_PASSAGEIROS_PE", nullable = false)
	private Integer qtdPassageirosPe;

	@Column(name = "TIPO_ONIBUS", length = 255, nullable = false)
	private String tipoDeOnibus;

	public Onibus() {
		super();
	}

	public Onibus(Integer idOnibus, String identEstadualUnica, String liberacaoEstadual, String liberacaoMunicipal,
			String numeroChassi, String placa, String dataFabricacao, Integer qtdPassageirosSentados,
			Integer qtdPassageirosPe, String tipoDeOnibus) {
		super();
		this.idOnibus = idOnibus;
		this.identEstadualUnica = identEstadualUnica;
		this.liberacaoEstadual = liberacaoEstadual;
		this.liberacaoMunicipal = liberacaoMunicipal;
		this.numeroChassi = numeroChassi;
		this.placa = placa;
		this.dataFabricacao = dataFabricacao;
		this.qtdPassageirosSentados = qtdPassageirosSentados;
		this.qtdPassageirosPe = qtdPassageirosPe;
		this.tipoDeOnibus = tipoDeOnibus;
	}

	public Integer getIdOnibus() {
		return idOnibus;
	}

	public void setIdOnibus(Integer idOnibus) {
		this.idOnibus = idOnibus;
	}

	public String getIdentEstadualUnica() {
		return identEstadualUnica;
	}

	public void setIdentEstadualUnica(String identEstadualUnica) {
		this.identEstadualUnica = identEstadualUnica;
	}

	public String getLiberacaoEstadual() {
		return liberacaoEstadual;
	}

	public void setLiberacaoEstadual(String liberacaoEstadual) {
		this.liberacaoEstadual = liberacaoEstadual;
	}

	public String getLiberacaoMunicipal() {
		return liberacaoMunicipal;
	}

	public void setLiberacaoMunicipal(String liberacaoMunicipal) {
		this.liberacaoMunicipal = liberacaoMunicipal;
	}

	public String getNumeroChassi() {
		return numeroChassi;
	}

	public void setNumeroChassi(String numeroChassi) {
		this.numeroChassi = numeroChassi;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getDataFabricacao() {
		return dataFabricacao;
	}

	public void setDataFabricacao(String dataFabricacao) {
		this.dataFabricacao = dataFabricacao;
	}

	public Integer getQtdPassageirosSentados() {
		return qtdPassageirosSentados;
	}

	public void setQtdPassageirosSentados(Integer qtdPassageirosSentados) {
		this.qtdPassageirosSentados = qtdPassageirosSentados;
	}

	public Integer getQtdPassageirosPe() {
		return qtdPassageirosPe;
	}

	public void setQtdPassageirosPe(Integer qtdPassageirosPe) {
		this.qtdPassageirosPe = qtdPassageirosPe;
	}

	public String getTipoDeOnibus() {
		return tipoDeOnibus;
	}

	public void setTipoDeOnibus(String tipoDeOnibus) {
		this.tipoDeOnibus = tipoDeOnibus;
	}

}
