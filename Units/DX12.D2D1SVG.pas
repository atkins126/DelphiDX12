unit DX12.D2D1SVG;
//---------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation.  All rights reserved.

// This file is automatically generated.  Please do not edit it directly.

// File name: D2D1Svg.h
//---------------------------------------------------------------------------

{$IFDEF FPC}
{$mode delphi}
{$ENDIF}

interface

uses
    Windows, Classes, SysUtils, DX12.D2D1, DX12.DXGI,
    ActiveX;

const
    IID_ID2D1SvgAttribute: TGUID = '{c9cdb0dd-f8c9-4e70-b7c2-301c80292c5e}';
    IID_ID2D1SvgPaint: TGUID = '{d59bab0a-68a2-455b-a5dc-9eb2854e2490}';
    IID_ID2D1SvgStrokeDashArray: TGUID = '{f1c0ca52-92a3-4f00-b4ce-f35691efd9d9}';
    IID_ID2D1SvgPointCollection: TGUID = '{9dbe4c0d-3572-4dd9-9825-5530813bb712}';
    IID_ID2D1SvgPathData: TGUID = '{c095e4f4-bb98-43d6-9745-4d1b84ec9888}';
    IID_ID2D1SvgElement: TGUID = '{ac7b67a6-183e-49c1-a823-0ebe40b0db29}';
    IID_ID2D1SvgDocument: TGUID = '{86b88e4d-afa4-4d7b-88e4-68a51c4a0aec}';

type

    TD2D1_SVG_PAINT_TYPE = (
        D2D1_SVG_PAINT_TYPE_NONE = 0,
        D2D1_SVG_PAINT_TYPE_COLOR = 1,
        D2D1_SVG_PAINT_TYPE_CURRENT_COLOR = 2,
        D2D1_SVG_PAINT_TYPE_URI = 3,
        D2D1_SVG_PAINT_TYPE_URI_NONE = 4,
        D2D1_SVG_PAINT_TYPE_URI_COLOR = 5,
        D2D1_SVG_PAINT_TYPE_URI_CURRENT_COLOR = 6,
        D2D1_SVG_PAINT_TYPE_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_PAINT_TYPE = ^TD2D1_SVG_PAINT_TYPE;

    TD2D1_SVG_LENGTH_UNITS = (
        D2D1_SVG_LENGTH_UNITS_NUMBER = 0,
        D2D1_SVG_LENGTH_UNITS_PERCENTAGE = 1,
        D2D1_SVG_LENGTH_UNITS_FORCE_DWORD = $ffffffff
        );
    PD2D1_SVG_LENGTH_UNITS = ^TD2D1_SVG_LENGTH_UNITS;

    TD2D1_SVG_DISPLAY = (
        D2D1_SVG_DISPLAY_INLINE = 0,
        D2D1_SVG_DISPLAY_NONE = 1,
        D2D1_SVG_DISPLAY_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_DISPLAY = ^TD2D1_SVG_DISPLAY;

    TD2D1_SVG_VISIBILITY = (
        D2D1_SVG_VISIBILITY_VISIBLE = 0,
        D2D1_SVG_VISIBILITY_HIDDEN = 1,
        D2D1_SVG_VISIBILITY_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_VISIBILITY = ^TD2D1_SVG_VISIBILITY;

    TD2D1_SVG_OVERFLOW = (
        D2D1_SVG_OVERFLOW_VISIBLE = 0,
        D2D1_SVG_OVERFLOW_HIDDEN = 1,
        D2D1_SVG_OVERFLOW_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_OVERFLOW = ^TD2D1_SVG_OVERFLOW;

    TD2D1_SVG_LINE_CAP = (
        D2D1_SVG_LINE_CAP_BUTT = Ord(D2D1_CAP_STYLE_FLAT),
        D2D1_SVG_LINE_CAP_SQUARE = Ord(D2D1_CAP_STYLE_SQUARE),
        D2D1_SVG_LINE_CAP_ROUND = Ord(D2D1_CAP_STYLE_ROUND),
        D2D1_SVG_LINE_CAP_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_LINE_CAP = ^TD2D1_SVG_LINE_CAP;


    TD2D1_SVG_LINE_JOIN = (
        D2D1_SVG_LINE_JOIN_BEVEL = Ord(D2D1_LINE_JOIN_BEVEL),
        D2D1_SVG_LINE_JOIN_MITER = Ord(D2D1_LINE_JOIN_MITER_OR_BEVEL),
        D2D1_SVG_LINE_JOIN_ROUND = Ord(D2D1_LINE_JOIN_ROUND),
        D2D1_SVG_LINE_JOIN_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_LINE_JOIN = ^TD2D1_SVG_LINE_JOIN;

    TD2D1_SVG_ASPECT_ALIGN = (
        D2D1_SVG_ASPECT_ALIGN_NONE = 0,
        D2D1_SVG_ASPECT_ALIGN_X_MIN_Y_MIN = 1,
        D2D1_SVG_ASPECT_ALIGN_X_MID_Y_MIN = 2,
        D2D1_SVG_ASPECT_ALIGN_X_MAX_Y_MIN = 3,
        D2D1_SVG_ASPECT_ALIGN_X_MIN_Y_MID = 4,
        D2D1_SVG_ASPECT_ALIGN_X_MID_Y_MID = 5,
        D2D1_SVG_ASPECT_ALIGN_X_MAX_Y_MID = 6,
        D2D1_SVG_ASPECT_ALIGN_X_MIN_Y_MAX = 7,
        D2D1_SVG_ASPECT_ALIGN_X_MID_Y_MAX = 8,
        D2D1_SVG_ASPECT_ALIGN_X_MAX_Y_MAX = 9,
        D2D1_SVG_ASPECT_ALIGN_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_ASPECT_ALIGN = ^TD2D1_SVG_ASPECT_ALIGN;


    TD2D1_SVG_ASPECT_SCALING = (
        D2D1_SVG_ASPECT_SCALING_MEET = 0,
        D2D1_SVG_ASPECT_SCALING_SLICE = 1,
        D2D1_SVG_ASPECT_SCALING_FORCE_DWORD = $ffffffff
        );
    PD2D1_SVG_ASPECT_SCALING = ^TD2D1_SVG_ASPECT_SCALING;


    TD2D1_SVG_PATH_COMMAND = (
        D2D1_SVG_PATH_COMMAND_CLOSE_PATH = 0,
        D2D1_SVG_PATH_COMMAND_MOVE_ABSOLUTE = 1,
        D2D1_SVG_PATH_COMMAND_MOVE_RELATIVE = 2,
        D2D1_SVG_PATH_COMMAND_LINE_ABSOLUTE = 3,
        D2D1_SVG_PATH_COMMAND_LINE_RELATIVE = 4,
        D2D1_SVG_PATH_COMMAND_CUBIC_ABSOLUTE = 5,
        D2D1_SVG_PATH_COMMAND_CUBIC_RELATIVE = 6,
        D2D1_SVG_PATH_COMMAND_QUADRADIC_ABSOLUTE = 7,
        D2D1_SVG_PATH_COMMAND_QUADRADIC_RELATIVE = 8,
        D2D1_SVG_PATH_COMMAND_ARC_ABSOLUTE = 9,
        D2D1_SVG_PATH_COMMAND_ARC_RELATIVE = 10,
        D2D1_SVG_PATH_COMMAND_HORIZONTAL_ABSOLUTE = 11,
        D2D1_SVG_PATH_COMMAND_HORIZONTAL_RELATIVE = 12,
        D2D1_SVG_PATH_COMMAND_VERTICAL_ABSOLUTE = 13,
        D2D1_SVG_PATH_COMMAND_VERTICAL_RELATIVE = 14,
        D2D1_SVG_PATH_COMMAND_CUBIC_SMOOTH_ABSOLUTE = 15,
        D2D1_SVG_PATH_COMMAND_CUBIC_SMOOTH_RELATIVE = 16,
        D2D1_SVG_PATH_COMMAND_QUADRADIC_SMOOTH_ABSOLUTE = 17,
        D2D1_SVG_PATH_COMMAND_QUADRADIC_SMOOTH_RELATIVE = 18,
        D2D1_SVG_PATH_COMMAND_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_PATH_COMMAND = ^TD2D1_SVG_PATH_COMMAND;


    TD2D1_SVG_UNIT_TYPE = (
        D2D1_SVG_UNIT_TYPE_USER_SPACE_ON_USE = 0,
        D2D1_SVG_UNIT_TYPE_OBJECT_BOUNDING_BOX = 1,
        D2D1_SVG_UNIT_TYPE_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_UNIT_TYPE = ^TD2D1_SVG_UNIT_TYPE;


    TD2D1_SVG_ATTRIBUTE_STRING_TYPE = (
        D2D1_SVG_ATTRIBUTE_STRING_TYPE_SVG = 0,
        D2D1_SVG_ATTRIBUTE_STRING_TYPE_ID = 1,
        D2D1_SVG_ATTRIBUTE_STRING_TYPE_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_ATTRIBUTE_STRING_TYPE = ^TD2D1_SVG_ATTRIBUTE_STRING_TYPE;


    TD2D1_SVG_ATTRIBUTE_POD_TYPE = (
        D2D1_SVG_ATTRIBUTE_POD_TYPE_FLOAT = 0,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_COLOR = 1,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_FILL_MODE = 2,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_DISPLAY = 3,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_OVERFLOW = 4,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_LINE_CAP = 5,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_LINE_JOIN = 6,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_VISIBILITY = 7,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_MATRIX = 8,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_UNIT_TYPE = 9,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_EXTEND_MODE = 10,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_PRESERVE_ASPECT_RATIO = 11,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_VIEWBOX = 12,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_LENGTH = 13,
        D2D1_SVG_ATTRIBUTE_POD_TYPE_FORCE_DWORD = $ffffffff
        );

    PD2D1_SVG_ATTRIBUTE_POD_TYPE = ^TD2D1_SVG_ATTRIBUTE_POD_TYPE;


    TD2D1_SVG_LENGTH = record
        Value: single;
        units: TD2D1_SVG_LENGTH_UNITS;
    end;

    PD2D1_SVG_LENGTH = ^TD2D1_SVG_LENGTH;


    TD2D1_SVG_PRESERVE_ASPECT_RATIO = record
        defer: boolean;
        align: TD2D1_SVG_ASPECT_ALIGN;
        meetOrSlice: TD2D1_SVG_ASPECT_SCALING;
    end;

    PD2D1_SVG_PRESERVE_ASPECT_RATIO = ^TD2D1_SVG_PRESERVE_ASPECT_RATIO;

    TD2D1_SVG_VIEWBOX = record
        x: single;
        y: single;
        Width: single;
        Height: single;
    end;
    PD2D1_SVG_VIEWBOX = ^TD2D1_SVG_VIEWBOX;


    ID2D1SvgElement = interface;
    ID2D1SvgDocument = interface;


    //{$IFDEF NTDDI_VERSION >= NTDDI_WIN10_RS2}

    ID2D1SvgAttribute = interface(ID2D1Resource)
        ['{c9cdb0dd-f8c9-4e70-b7c2-301c80292c5e}']
        procedure GetElement(out element: ID2D1SvgElement); stdcall;
        function Clone(out attribute: ID2D1SvgAttribute): HResult; stdcall;
    end;



    ID2D1SvgPaint = interface(ID2D1SvgAttribute)
        ['{d59bab0a-68a2-455b-a5dc-9eb2854e2490}']
        function SetPaintType(paintType: TD2D1_SVG_PAINT_TYPE): HResult; stdcall;
        function GetPaintType(): TD2D1_SVG_PAINT_TYPE; stdcall;
        function SetColor(const color: TD2D1_COLOR_F): HResult; stdcall;
        procedure GetColor(out color: TD2D1_COLOR_F); stdcall;
        function SetId(id: Pwidechar): HResult; stdcall;
        function GetId(out id: PWideChar; idCount: UINT32): HResult; stdcall;
        function GetIdLength(): UINT32; stdcall;
    end;



    ID2D1SvgStrokeDashArray = interface(ID2D1SvgAttribute)
        ['{f1c0ca52-92a3-4f00-b4ce-f35691efd9d9}']
        function RemoveDashesAtEnd(dashesCount: UINT32): HResult; stdcall;
        function UpdateDashes(dashes: PSingle; dashesCount: UINT32; startIndex: UINT32 = 0): HResult; stdcall; overload;
        function UpdateDashes(dashes: PD2D1_SVG_LENGTH; dashesCount: UINT32; startIndex: UINT32 = 0): HResult;
            stdcall; overload;
        function GetDashes(out dashes: PSingle; dashesCount: UINT32; startIndex: UINT32 = 0): HResult; stdcall; overload;
        function GetDashes(out dashes: PD2D1_SVG_LENGTH; dashesCount: UINT32; startIndex: UINT32 = 0): HResult;
            stdcall; overload;
        function GetDashesCount(): UINT32; stdcall;
    end;



    ID2D1SvgPointCollection = interface(ID2D1SvgAttribute)
        ['{9dbe4c0d-3572-4dd9-9825-5530813bb712}']
        function RemovePointsAtEnd(pointsCount: UINT32): HResult; stdcall;
        function UpdatePoints(points: PD2D1_POINT_2F; pointsCount: UINT32; startIndex: UINT32 = 0): HResult; stdcall;
        function GetPoints(points: PD2D1_POINT_2F; pointsCount: UINT32; startIndex: UINT32 = 0): HResult; stdcall;
        function GetPointsCount(): UINT32; stdcall;
    end;



    ID2D1SvgPathData = interface(ID2D1SvgAttribute)
        ['{c095e4f4-bb98-43d6-9745-4d1b84ec9888}']
        function RemoveSegmentDataAtEnd(dataCount: UINT32): HResult; stdcall;
        function UpdateSegmentData(Data: PSingle; dataCount: UINT32; startIndex: UINT32 = 0): HResult; stdcall;
        function GetSegmentData(out Data: PSingle; dataCount: UINT32; startIndex: UINT32 = 0): HResult; stdcall;
        function GetSegmentDataCount(): UINT32; stdcall;
        function RemoveCommandsAtEnd(commandsCount: UINT32): HResult; stdcall;
        function UpdateCommands(commands: PD2D1_SVG_PATH_COMMAND; commandsCount: UINT32; startIndex: UINT32 = 0): HResult; stdcall;
        function GetCommands(out commands: PD2D1_SVG_PATH_COMMAND; commandsCount: UINT32; startIndex: UINT32 = 0): HResult; stdcall;
        function GetCommandsCount(): UINT32; stdcall;
        function CreatePathGeometry(fillMode: TD2D1_FILL_MODE; out pathGeometry: ID2D1PathGeometry1): HResult; stdcall;
    end;



    ID2D1SvgElement = interface(ID2D1Resource)
        ['{ac7b67a6-183e-49c1-a823-0ebe40b0db29}']
        procedure GetDocument(out document: ID2D1SvgDocument); stdcall;
        function GetTagName(out Name: PWideChar; nameCount: UINT32): HResult; stdcall;
        function GetTagNameLength(): UINT32; stdcall;
        function IsTextContent(): boolean; stdcall;
        procedure GetParent(out parent: ID2D1SvgElement); stdcall;
        function HasChildren(): boolean; stdcall;
        procedure GetFirstChild(out child: ID2D1SvgElement); stdcall;
        procedure GetLastChild(out child: ID2D1SvgElement); stdcall;
        function GetPreviousChild(referenceChild: ID2D1SvgElement; out previousChild: ID2D1SvgElement): HResult; stdcall;
        function GetNextChild(referenceChild: ID2D1SvgElement; out nextChild: ID2D1SvgElement): HResult; stdcall;
        function InsertChildBefore(newChild: ID2D1SvgElement; referenceChild: ID2D1SvgElement = nil): HResult; stdcall;
        function AppendChild(newChild: ID2D1SvgElement): HResult; stdcall;
        function ReplaceChild(newChild: ID2D1SvgElement; oldChild: ID2D1SvgElement): HResult; stdcall;
        function RemoveChild(oldChild: ID2D1SvgElement): HResult; stdcall;
        function CreateChild(tagName: Pwidechar; out newChild: ID2D1SvgElement): HResult; stdcall;
        function IsAttributeSpecified(Name: Pwidechar; out AInherited: boolean): boolean; stdcall;
        function GetSpecifiedAttributeCount(): UINT32; stdcall;
        function GetSpecifiedAttributeName(index: UINT32; out Name: PWideChar; nameCount: UINT32;
            out Ainherited: boolean): HResult; stdcall;
        function GetSpecifiedAttributeNameLength(index: UINT32; out nameLength: UINT32; out Ainherited: boolean): HResult; stdcall;
        function RemoveAttribute(Name: Pwidechar): HResult; stdcall;
        function SetTextValue(Name: PWideCHAR; nameCount: UINT32): HResult; stdcall;
        function GetTextValue(out Name: PWideCHAR; nameCount: UINT32): HResult; stdcall;
        function GetTextValueLength(): UINT32; stdcall;
        function SetAttributeValue(Name: Pwidechar; AType: TD2D1_SVG_ATTRIBUTE_STRING_TYPE; Value: Pwidechar): HResult;
            stdcall; overload;
        function GetAttributeValue(Name: PWideCHAR; AType: TD2D1_SVG_ATTRIBUTE_STRING_TYPE; out Value: PWideCHAR;
            valueCount: UINT32): HResult; stdcall; overload;
        function GetAttributeValueLength(Name: PWideCHAR; AType: TD2D1_SVG_ATTRIBUTE_STRING_TYPE;
            out valueLength: UINT32): HResult; stdcall;
        function SetAttributeValue(Name: PWideCHAR; AType: TD2D1_SVG_ATTRIBUTE_POD_TYPE; Value: PByte; valueSizeInBytes: UINT32): HResult;
            stdcall; overload;
        function GetAttributeValue(Name: PWideChar; AType: TD2D1_SVG_ATTRIBUTE_POD_TYPE; out Value: PByte;
            valueSizeInBytes: UINT32): HResult; stdcall; overload;
        function SetAttributeValue(Name: PWideChar; Value: ID2D1SvgAttribute): HResult; stdcall; overload;
        function GetAttributeValue(Name: PWideChar; const riid: TGUID; out Value): HResult; stdcall; overload;


(*
    /// <summary>
    /// Sets an attribute of this element as a color.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        CONST D2D1_COLOR_F &value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_COLOR, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a color.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_COLOR_F *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_COLOR, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a fill mode. This method can be used to set
    /// the value of the 'fill-rule' or 'clip-rule' properties.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        D2D1_FILL_MODE value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_FILL_MODE, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a fill mode. This method can be used to get
    /// the value of the 'fill-rule' or 'clip-rule' properties.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_FILL_MODE *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_FILL_MODE, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a display value. This method can be used to
    /// set the value of the 'display' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        D2D1_SVG_DISPLAY value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_DISPLAY, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a display value. This method can be used to
    /// get the value of the 'display' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_SVG_DISPLAY *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_DISPLAY, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as an overflow value. This method can be used
    /// to set the value of the 'overflow' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        D2D1_SVG_OVERFLOW value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_OVERFLOW, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as an overflow value. This method can be used
    /// to get the value of the 'overflow' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_SVG_OVERFLOW *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_OVERFLOW, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a line join value. This method can be used
    /// to set the value of the 'stroke-linejoin' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        D2D1_SVG_LINE_JOIN value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_LINE_JOIN, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a line join value. This method can be used
    /// to get the value of the 'stroke-linejoin' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_SVG_LINE_JOIN *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_LINE_JOIN, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a line cap value. This method can be used
    /// to set the value of the 'stroke-linecap' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        D2D1_SVG_LINE_CAP value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_LINE_CAP, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a line cap value. This method can be used
    /// to get the value of the 'stroke-linecap' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_SVG_LINE_CAP *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_LINE_CAP, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a visibility value. This method can be used
    /// to set the value of the 'visibility' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        D2D1_SVG_VISIBILITY value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_VISIBILITY, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a visibility value. This method can be used
    /// to get the value of the 'visibility' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_SVG_VISIBILITY *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_VISIBILITY, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a matrix value. This method can be used to
    /// set the value of a 'transform' or 'gradientTransform' attribute.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        CONST D2D1_MATRIX_3X2_F &value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_MATRIX, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a matrix value. This method can be used to
    /// get the value of a 'transform' or 'gradientTransform' attribute.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_MATRIX_3X2_F *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_MATRIX, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a unit type value. This method can be used
    /// to set the value of a 'gradientUnits' or 'clipPathUnits' attribute.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        D2D1_SVG_UNIT_TYPE value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_UNIT_TYPE, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a unit type value. This method can be used
    /// to get the value of a 'gradientUnits' or 'clipPathUnits' attribute.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_SVG_UNIT_TYPE *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_UNIT_TYPE, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as an extend mode value. This method can be
    /// used to set the value of a 'spreadMethod' attribute.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        D2D1_EXTEND_MODE value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_EXTEND_MODE, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a extend mode value. This method can be
    /// used to get the value of a 'spreadMethod' attribute.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_EXTEND_MODE *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_EXTEND_MODE, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a preserve aspect ratio value. This method
    /// can be used to set the value of a 'preserveAspectRatio' attribute.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        CONST D2D1_SVG_PRESERVE_ASPECT_RATIO &value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_PRESERVE_ASPECT_RATIO, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a preserve aspect ratio value. This method
    /// can be used to get the value of a 'preserveAspectRatio' attribute.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_SVG_PRESERVE_ASPECT_RATIO *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_PRESERVE_ASPECT_RATIO, value, sizeof(*value));
    }

    /// <summary>
    /// Sets an attribute of this element as a length value.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    SetAttributeValue(
        _In_ PCWSTR name,
        CONST D2D1_SVG_LENGTH &value
        )
    {
        return SetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_LENGTH, &value, sizeof(value));
    }

    /// <summary>
    /// Gets an attribute of this element as length value.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        out  D2D1_SVG_LENGTH *value
        )
    {
        return GetAttributeValue(name, D2D1_SVG_ATTRIBUTE_POD_TYPE_LENGTH, value, sizeof(*value));
    }

    /// <summary>
    /// Gets an attribute of this element.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        _COMout  ID2D1SvgAttribute **value
        )
    {
        return GetAttributeValue(name, IID_ID2D1SvgAttribute, reinterpret_cast<void **>(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a paint. This method can be used to get the
    /// value of the 'fill' or 'stroke' properties.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        _COMout  ID2D1SvgPaint **value
        )
    {
        return GetAttributeValue(name, IID_ID2D1SvgPaint, reinterpret_cast<void **>(value));
    }

    /// <summary>
    /// Gets an attribute of this element as a stroke dash array. This method can be
    /// used to get the value of the 'stroke-dasharray' property.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        _COMout  ID2D1SvgStrokeDashArray **value
        )
    {
        return GetAttributeValue(name, IID_ID2D1SvgStrokeDashArray, reinterpret_cast<void **>(value));
    }

    /// <summary>
    /// Gets an attribute of this element as points. This method can be used to get the
    /// value of the 'points' attribute on a 'polygon' or 'polyline' element.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        _COMout  ID2D1SvgPointCollection **value
        )
    {
        return GetAttributeValue(name, IID_ID2D1SvgPointCollection, reinterpret_cast<void **>(value));
    }

    /// <summary>
    /// Gets an attribute of this element as path data. This method can be used to get
    /// the value of the 'd' attribute on a 'path' element.
    /// </summary>
    COM_DECLSPEC_NOTHROW
    HRESULT
    GetAttributeValue(
        _In_ PCWSTR name,
        _COMout  ID2D1SvgPathData **value
        )
    {
        return GetAttributeValue(name, IID_ID2D1SvgPathData, reinterpret_cast<void **>(value));
    }
    *)
    end;


    ID2D1SvgDocument = interface(ID2D1Resource)
        ['{86b88e4d-afa4-4d7b-88e4-68a51c4a0aec}']
        function SetViewportSize(viewportSize: TD2D1_SIZE_F): HResult; stdcall;
        function GetViewportSize(): TD2D1_SIZE_F; stdcall;
        function SetRoot(root: ID2D1SvgElement): HResult; stdcall;
        procedure GetRoot(out root: ID2D1SvgElement); stdcall;
        function FindElementById(id: PWideChar; out svgElement: ID2D1SvgElement): HResult; stdcall;
        function Serialize(outputXmlStream: IStream; subtree: ID2D1SvgElement = nil): HResult; stdcall;
        function Deserialize(inputXmlStream: IStream; out subtree: ID2D1SvgElement): HResult; stdcall;
        function CreatePaint(paintType: TD2D1_SVG_PAINT_TYPE; const color: TD2D1_COLOR_F; id: PWideChar;
            out paint: ID2D1SvgPaint): HResult; stdcall;
        function CreateStrokeDashArray(dashes: PD2D1_SVG_LENGTH; dashesCount: UINT32;
            out strokeDashArray: ID2D1SvgStrokeDashArray): HResult; stdcall;
        function CreatePointCollection(points: PD2D1_POINT_2F; pointsCount: UINT32;
            out pointCollection: ID2D1SvgPointCollection): HResult; stdcall;
        function CreatePathData(segmentData: PSingle; segmentDataCount: UINT32; commands: PD2D1_SVG_PATH_COMMAND;
            commandsCount: UINT32; out pathData: ID2D1SvgPathData): HResult; stdcall;

    end;

   (*
    { TMyID2D1SvgDocumentHelper }

    TMyID2D1SvgDocumentHelper = class helper for ID2D1SvgDocument
        function CreatePaint(paintType: TD2D1_SVG_PAINT_TYPE; color: TD2D1_COLOR_F; id: PWideChar;
            out paint: ID2D1SvgPaint): HResult; stdcall;
    end;

    *)

//{$ENDIF}

implementation

(*

{ TMyID2D1SvgDocumentHelper }

function TMyID2D1SvgDocumentHelper.CreatePaint(paintType: TD2D1_SVG_PAINT_TYPE;
  color: TD2D1_COLOR_F; id: PWideChar; out paint: ID2D1SvgPaint): HResult;
  stdcall;
begin
    result:= CreatePaint(paintType, color, id, paint);
end;

*)

end.
