﻿Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Public Class Consulta
    Public Function consulta(ByVal base As String, ByVal sentencia As String) As DataTable
        'Variables
        Dim conexion As String = "Data Source=(local);Initial Catalog=" & base & ";Integrated security=SSPI;"
        Dim miCnx As New SqlConnection(conexion)
        Dim miDT As New DataTable

        'Sentencia sql
        Try
            If sentencia.Contains("select") Then
                Dim miAdaptador As New SqlDataAdapter(sentencia, miCnx)
                miAdaptador.Fill(miDT)

                'Procedimiento almacenado
            Else
                Dim miCmd As New SqlCommand(sentencia, miCnx)
                miCmd.CommandType = CommandType.StoredProcedure
                Dim miAdaptador As New SqlDataAdapter(miCmd)
                miAdaptador.Fill(miDT)
            End If

        Catch ex As Exception
            miDT = Nothing
        End Try

        Return miDT
    End Function

    Public Function ejecucion(ByVal base As String, ByVal sentencia As String) As Integer
        Dim filas As Integer
        Dim conexion As String = "Data Source=(local);Initial Catalog=" & base & ";Integrated security=SSPI;"
        Dim miCnx As New SqlConnection(conexion)

        Try
            Dim miCmd As New SqlCommand(sentencia, miCnx)
            miCnx.Open()
            filas = miCmd.ExecuteNonQuery()
        Catch
            filas = -1
        Finally
            miCnx.Close()
            miCnx.Dispose()
        End Try

        Return filas
    End Function

    Public Function consultaEscalar(ByVal base As String, ByVal sentencia As String) As Integer

        Dim conexion As String = "Data Source=(local);Initial Catalog=" & base & ";Integrated security=SSPI;"
        Dim miCnx As New SqlConnection(conexion)
        Dim resultado As Integer
        Dim miCmd As New SqlCommand(sentencia, miCnx)

        Try
            miCnx.Open()
            resultado = miCmd.ExecuteScalar()
        Catch
            resultado = -1
        Finally
            miCnx.Close()
        End Try

        Return resultado
    End Function
End Class
