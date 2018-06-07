package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_linhas")
@SequenceGenerator(name = "LINHA_PK", sequenceName = "SEQ_LINHA_PK", allocationSize = 1, initialValue = 1)
public class Linhas {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "LINHA_PK")
	private Integer idLinha; // verificar implementação

	@Column(name = "NUMERO_LINHA", length = 255, nullable = false)
	private String numeroLinha;

	@Column(name = "EXTENSAO_KM", nullable = false, columnDefinition = "DECIMAL(15,2)")
	private Float extensaoKm;

	@Column(name = "TIPO_ONIBUS", length = 255, nullable = false)
	private String tipoDeOnibus;

	@Column(name = "VALOR_PASSAGEM", nullable = false, columnDefinition = "DECIMAL(15,2)")
	private Float valorPassagem;

	@Column(name = "TEMPO_MEDIO", nullable = false)
	private String tempoMedio;

	@Column(name = "HORA_INICIO", nullable = false)
	private String horaInicioOperacao;

	@Column(name = "HORA_FIM", nullable = false)
	private String horaFimOperacao;

	@ManyToOne
	@JoinColumn(name="id_tipo_linha_fk")
	private TipoDeLinha tipoDeLinha;

	public Linhas() {
		super();

	}

	public Linhas(Integer idLinha, String numeroLinha, Float extensaoKm, String tipoDeOnibus, Float valorPassagem,
			String tempoMedio, String horaInicioOperacao, String horaFimOperacao) {
		super();
		this.idLinha = idLinha;
		this.numeroLinha = numeroLinha;
		this.extensaoKm = extensaoKm;
		this.tipoDeOnibus = tipoDeOnibus;
		this.valorPassagem = valorPassagem;
		this.tempoMedio = tempoMedio;
		this.horaInicioOperacao = horaInicioOperacao;
		this.horaFimOperacao = horaFimOperacao;
	}

	public Integer getIdLinha() {
		return idLinha;
	}

	public void setIdLinha(Integer idLinha) {
		this.idLinha = idLinha;
	}

	public String getNumeroLinha() {
		return numeroLinha;
	}

	public void setNumeroLinha(String numeroLinha) {
		this.numeroLinha = numeroLinha;
	}

	public Float getExtensaoKm() {
		return extensaoKm;
	}

	public void setExtensaoKm(Float extensaoKm) {
		this.extensaoKm = extensaoKm;
	}

	public String getTipoDeOnibus() {
		return tipoDeOnibus;
	}

	public void setTipoDeOnibus(String tipoDeOnibus) {
		this.tipoDeOnibus = tipoDeOnibus;
	}

	public Float getValorPassagem() {
		return valorPassagem;
	}

	public void setValorPassagem(Float valorPassagem) {
		this.valorPassagem = valorPassagem;
	}

	public String getTempoMedio() {
		return tempoMedio;
	}

	public void setTempoMedio(String tempoMedio) {
		this.tempoMedio = tempoMedio;
	}

	public String getHoraInicioOperacao() {
		return horaInicioOperacao;
	}

	public void setHoraInicioOperacao(String horaInicioOperacao) {
		this.horaInicioOperacao = horaInicioOperacao;
	}

	public String getHoraFimOperacao() {
		return horaFimOperacao;
	}

	public void setHoraFimOperacao(String horaFimOperacao) {
		this.horaFimOperacao = horaFimOperacao;
	}

	public TipoDeLinha getTipoDeLinha() {
		return tipoDeLinha;
	}

	public void setTipoDeLinha(TipoDeLinha tipoDeLinha) {
		this.tipoDeLinha = tipoDeLinha;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((extensaoKm == null) ? 0 : extensaoKm.hashCode());
		result = prime * result + ((horaFimOperacao == null) ? 0 : horaFimOperacao.hashCode());
		result = prime * result + ((horaInicioOperacao == null) ? 0 : horaInicioOperacao.hashCode());
		result = prime * result + ((idLinha == null) ? 0 : idLinha.hashCode());
		result = prime * result + ((numeroLinha == null) ? 0 : numeroLinha.hashCode());
		result = prime * result + ((tempoMedio == null) ? 0 : tempoMedio.hashCode());
		result = prime * result + ((tipoDeLinha == null) ? 0 : tipoDeLinha.hashCode());
		result = prime * result + ((tipoDeOnibus == null) ? 0 : tipoDeOnibus.hashCode());
		result = prime * result + ((valorPassagem == null) ? 0 : valorPassagem.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Linhas other = (Linhas) obj;
		if (extensaoKm == null) {
			if (other.extensaoKm != null)
				return false;
		} else if (!extensaoKm.equals(other.extensaoKm))
			return false;
		if (horaFimOperacao == null) {
			if (other.horaFimOperacao != null)
				return false;
		} else if (!horaFimOperacao.equals(other.horaFimOperacao))
			return false;
		if (horaInicioOperacao == null) {
			if (other.horaInicioOperacao != null)
				return false;
		} else if (!horaInicioOperacao.equals(other.horaInicioOperacao))
			return false;
		if (idLinha == null) {
			if (other.idLinha != null)
				return false;
		} else if (!idLinha.equals(other.idLinha))
			return false;
		if (numeroLinha == null) {
			if (other.numeroLinha != null)
				return false;
		} else if (!numeroLinha.equals(other.numeroLinha))
			return false;
		if (tempoMedio == null) {
			if (other.tempoMedio != null)
				return false;
		} else if (!tempoMedio.equals(other.tempoMedio))
			return false;
		if (tipoDeLinha == null) {
			if (other.tipoDeLinha != null)
				return false;
		} else if (!tipoDeLinha.equals(other.tipoDeLinha))
			return false;
		if (tipoDeOnibus == null) {
			if (other.tipoDeOnibus != null)
				return false;
		} else if (!tipoDeOnibus.equals(other.tipoDeOnibus))
			return false;
		if (valorPassagem == null) {
			if (other.valorPassagem != null)
				return false;
		} else if (!valorPassagem.equals(other.valorPassagem))
			return false;
		return true;
	}

}
