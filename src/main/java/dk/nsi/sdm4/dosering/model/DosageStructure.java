/**
 * The MIT License
 *
 * Original work sponsored and donated by National Board of e-Health (NSI), Denmark
 * (http://www.nsi.dk)
 *
 * Copyright (C) 2011 National Board of e-Health (NSI), Denmark (http://www.nsi.dk)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 * of the Software, and to permit persons to whom the Software is furnished to do
 * so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

package dk.nsi.sdm4.dosering.model;

import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Arrays;
import java.util.Collections;

@Entity
public class DosageStructure extends DosageRecord
{
	// Reference til releaseNumber i Version. Obligatorisk. Heltal, 15 cifre.
	private long releaseNumber;

	// Unik kode for doseringstrukturen. Obligatorisk. Heltal, 11 cifre.
	private long code;

	// Typen af dosering, enten "M+M+A+N", "PN", "N daglig",
	// "Fritekst" eller "Kompleks". Obligatorisk. Streng, 100 tegn.
	private String type;

	// For simple typer (dvs. alt andet end "Kompleks")
	// indeholder feltet doseringen på simpel form. Optionelt. Streng, 100 tegn.
	private String simpleString;

	// For simple typer en eventuel supplerende tekst.
	// Optionelt. Streng, 200 tegn.
	private String supplementaryText;

	// FMKs strukturerede dosering i XML format. Bemærk at enkelte
	// værdier vil være escaped. Obligatorisk. Streng, 10000 tegn.
	private String xml;

	// Såfremt det er muligt at lave en kort
	// doseringstekst på baggrund af xml og lægemidlets doseringsenhed vil
	// dette felt indeholde denne. Optionelt. Streng, 70 tegn.
	private String shortTranslation;

	// En lang doseringstekst baggrund af xml og
	// lægemidlets doseringsenhed. Obligatorisk. Strengm 10000 tegn.
	// TODO: While this is marked as (Mandatory) in practice it is
	// sometimes null. This will change in future. (Tom K)
	private String longTranslation;

	@Column
	public long getReleaseNumber()
	{
		return releaseNumber;
	}

	@Id
	@Column
	public long getCode()
	{
		return code;
	}

	@Column
	public String getType()
	{
		return type;
	}

	@Column
	public String getSimpleString()
	{
		return simpleString;
	}

	@Column
	public String getSupplementaryText()
	{
		return supplementaryText;
	}

	@Column
	public String getXml()
	{
		return xml;
	}

	@Column
	public String getShortTranslation()
	{
		return shortTranslation;
	}

	@Column
	public String getLongTranslation()
	{
		return longTranslation;
	}

	public String toString() {
		return new ReflectionToStringBuilder(this).setExcludeFieldNames(new String[] {"xml"}).toString();
	}
}
