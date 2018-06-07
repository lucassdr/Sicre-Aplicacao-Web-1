package dominio;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tab_tiposDeLinha")
@SequenceGenerator(name = "TIPO_LINHA_PK", sequenceName = "SEQ_TIPO_LINHA_PK", allocationSize = 1)
public class TipoDeLinha {

	//TODO adicionar um atributo chamado tipo. Esse atributo ira conter se o tipo é expresso, parador, executiva expresso, etc.
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TIPO_LINHA_PK")
	private Integer idTipoDeLinha;

	@Column(name = "NOME_DO_TIPO")
	private String nome;

	@OneToMany(mappedBy = "tipoDeLinha", fetch = FetchType.LAZY)
	private List<Linhas> linhas;

	public Integer getIdTipoDeLinha() {
		return idTipoDeLinha;
	}

	public void setIdTipoDeLinha(Integer idTipoDeLinha) {
		this.idTipoDeLinha = idTipoDeLinha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<Linhas> getLinhas() {
		return linhas;
	}

	public void setLinhas(List<Linhas> linhas) {
		this.linhas = linhas;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idTipoDeLinha == null) ? 0 : idTipoDeLinha.hashCode());
		result = prime * result + ((linhas == null) ? 0 : linhas.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
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
		TipoDeLinha other = (TipoDeLinha) obj;
		if (idTipoDeLinha == null) {
			if (other.idTipoDeLinha != null)
				return false;
		} else if (!idTipoDeLinha.equals(other.idTipoDeLinha))
			return false;
		if (linhas == null) {
			if (other.linhas != null)
				return false;
		} else if (!linhas.equals(other.linhas))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}

}
