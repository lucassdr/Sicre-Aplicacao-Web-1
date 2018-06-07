package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_ruas")
@SequenceGenerator(name = "RUA_PK", sequenceName = "SEQ_RUA_PK", allocationSize = 1)
public class Rua {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "RUA_PK")
	private Integer idRua;

	@Column(name = "NOME_DA_RUA", length = 255, nullable = false)
	private String nomeDaRua;

	@Column(name = "BAIRRO", length = 255, nullable = false)
	private String bairro;

	@Column(name = "CIDADE", length = 255, nullable = false)
	private String cidade;

	public Rua() {
		super();

	}

	public Rua(Integer idRua, String nomeDaRua, String bairro, String cidade) {
		super();
		this.idRua = idRua;
		this.nomeDaRua = nomeDaRua;
		this.bairro = bairro;
		this.cidade = cidade;
	}

	public Integer getIdRua() {
		return idRua;
	}

	public void setIdRua(Integer idRua) {
		this.idRua = idRua;
	}

	public String getNomeDaRua() {
		return nomeDaRua;
	}

	public void setNomeDaRua(String nomeDaRua) {
		this.nomeDaRua = nomeDaRua;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

}
