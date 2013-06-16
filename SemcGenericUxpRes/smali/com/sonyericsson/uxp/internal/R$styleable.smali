.class public final Lcom/sonyericsson/uxp/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/uxp/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PopupWindow:[I = null

.field public static final PopupWindow_popupNavigationBarOverlay:I = 0x0

.field public static final SEMCRuntimeTheme:[I = null

.field public static final SEMCRuntimeTheme_semcApplicationBackground:I = 0x0

.field public static final SEMCRuntimeTheme_semcLiveWallpaperComponent:I = 0x3

.field public static final SEMCRuntimeTheme_semcPreview:I = 0x1

.field public static final SEMCRuntimeTheme_semcWallpaperImage:I = 0x2

.field public static final SEMCTheme:[I = null

.field public static final SEMCTheme_semcTextAppearanceBadge:I = 0x1

.field public static final SEMCTheme_switchButtonStyle:I

.field public static final ViewGroupDirectionality:[I

.field public static final ViewGroupDirectionality_directionality:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 963
    new-array v0, v3, [I

    const v1, 0x2010005

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/uxp/internal/R$styleable;->PopupWindow:[I

    .line 1002
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/uxp/internal/R$styleable;->SEMCRuntimeTheme:[I

    .line 1071
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/uxp/internal/R$styleable;->SEMCTheme:[I

    .line 1105
    new-array v0, v3, [I

    const v1, 0x2010004

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/uxp/internal/R$styleable;->ViewGroupDirectionality:[I

    return-void

    .line 1002
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x2t
        0x1t 0x0t 0x1t 0x2t
        0x2t 0x0t 0x1t 0x2t
        0x3t 0x0t 0x1t 0x2t
    .end array-data

    .line 1071
    :array_1
    .array-data 0x4
        0x6t 0x0t 0x1t 0x2t
        0x7t 0x0t 0x1t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
