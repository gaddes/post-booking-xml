<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/Page/SessionData">
    <html>
      <body>
        <h1><xsl:value-of select="WelcomeMessage"/></h1>

        <!-- for-each -->
        <table border="1">
          <tr bgcolor="lightgrey">
            <th colspan="7">for-each</th>
          </tr>

          <tr bgcolor="lightblue">
            <th>Booking Reference</th>
            <th>Departure Airport Code</th>
            <th>Departure Location</th>
            <th>Arrival Airport Code</th>
            <th>Arrival Location</th>
            <th>Departure Date</th>
            <th>Flight Number</th>
          </tr>

          <xsl:for-each select="Flights/Flight">
            <tr>
              <td><xsl:value-of select="BookingReference" /></td>
              <td><xsl:value-of select="DepartureAirportCode" /></td>
              <td><xsl:value-of select="DepartureLocation" /></td>
              <td><xsl:value-of select="ArrivalAirportCode" /></td>
              <td><xsl:value-of select="ArrivalLocation" /></td>
              <td><xsl:value-of select="DepartureDate" /></td>
              <td><xsl:value-of select="FlightNumber" /></td>
            </tr>
          </xsl:for-each>
        </table>

        <br/>

        <!-- apply-templates -->
        <table border="1">
          <tr bgcolor="lightgrey">
            <th colspan="7">apply-templates</th>
          </tr>

          <tr bgcolor="lightblue">
            <th>Booking Reference</th>
            <th>Departure Airport Code</th>
            <th>Departure Location</th>
            <th>Arrival Airport Code</th>
            <th>Arrival Location</th>
            <th>Departure Date</th>
            <th>Flight Number</th>
          </tr>

          <xsl:apply-templates select="Flights/Flight" />
        </table>

      </body>
    </html>
  </xsl:template>
  
  <!-- Create FLIGHT template  -->
  <xsl:template match="Flight">
    <tr>
      <td><xsl:value-of select="BookingReference" /></td>
      <td><xsl:value-of select="DepartureAirportCode" /></td>
      <td><xsl:value-of select="DepartureLocation" /></td>
      <td><xsl:value-of select="ArrivalAirportCode" /></td>
      <td><xsl:value-of select="ArrivalLocation" /></td>
      <td><xsl:value-of select="DepartureDate" /></td>
      <td><xsl:value-of select="FlightNumber" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>