unit fbblTipi;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fbblcostanti;

Type
  TDimensioni2d = Record
                            Righe : Integer ;
                            Colonne: Integer
                          End;
  //------------------------------------------------------------------------------
Type
  TArray2dStringhe = Array[1 .. DimensioneMassimaArray2d, 1 .. DimensioneMassimaArray2d] of String ;

 //------------------------------------------------------------------------------
Type
  TMatriceStringhe= Record
                            ArrayDati: TArray2dStringhe;
                            Dimensioni: TDimensioni2d
                          End;

implementation

end.

