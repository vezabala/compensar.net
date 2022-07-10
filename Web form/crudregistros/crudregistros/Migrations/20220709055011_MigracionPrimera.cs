﻿using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace crudregistros.Migrations
{
    public partial class MigracionPrimera : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "curso",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nombreCurso = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    cantidadDeClases = table.Column<int>(type: "int", nullable: false),
                    precio = table.Column<int>(type: "int", nullable: false),
                    fechaInicio = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_curso", x => x.id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "curso");
        }
    }
}
