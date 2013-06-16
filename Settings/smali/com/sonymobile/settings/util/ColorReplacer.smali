.class public Lcom/sonymobile/settings/util/ColorReplacer;
.super Ljava/lang/Object;
.source "ColorReplacer.java"


# instance fields
.field private mColorToReplaceHue:F

.field private mHueDiff:F

.field private mSaturationDiff:F

.field private mValueDiff:F


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .parameter "colorToReplace"
    .parameter "colorizationColor"

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, v2, [F

    .line 47
    .local v0, colorToReplaceHSV:[F
    new-array v1, v2, [F

    .line 48
    .local v1, colorizationColorHSV:[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 49
    invoke-static {p2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 51
    aget v2, v0, v3

    iput v2, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mColorToReplaceHue:F

    .line 52
    aget v2, v1, v3

    iget v3, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mColorToReplaceHue:F

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/settings/util/ColorReplacer;->getHueDifference(FF)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mHueDiff:F

    .line 53
    aget v2, v1, v4

    aget v3, v0, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mSaturationDiff:F

    .line 54
    aget v2, v1, v5

    aget v3, v0, v5

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mValueDiff:F

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const v1, -0xd5541c

    .line 62
    invoke-static {p1, v1}, Lcom/sonymobile/settings/util/ColorReplacer;->getThemeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/settings/util/ColorReplacer;-><init>(II)V

    .line 63
    return-void
.end method

.method private getHueDifference(FF)I
    .locals 2
    .parameter "hue1"
    .parameter "hue2"

    .prologue
    .line 66
    sub-float v1, p1, p2

    float-to-int v0, v1

    .line 67
    .local v0, diff:I
    rem-int/lit16 v1, v0, 0x168

    add-int/lit16 v1, v1, 0x21c

    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, -0xb4

    return v1
.end method

.method public static getThemeColor(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "defaultColor"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 126
    .local v3, resources:Landroid/content/res/Resources;
    move v4, p1

    .line 127
    .local v4, result:I
    if-eqz v3, :cond_0

    .line 128
    const-string v5, "semc_theme_accent_color"

    const-string v6, "color"

    const-string v7, "com.sonyericsson.uxp"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, colorResId:I
    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 133
    .local v0, color:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 141
    .end local v0           #color:Ljava/lang/Integer;
    .end local v1           #colorResId:I
    :cond_0
    :goto_0
    return v4

    .line 134
    .restart local v1       #colorResId:I
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find color resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private normalize(F)F
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 79
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    .line 84
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 81
    .restart local p1
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    .line 82
    goto :goto_0
.end method

.method private normalizeAngle(F)F
    .locals 2
    .parameter "angle"

    .prologue
    const/high16 v1, 0x43b4

    .line 71
    rem-float/2addr p1, v1

    .line 72
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 73
    add-float/2addr p1, v1

    .line 75
    :cond_0
    return p1
.end method


# virtual methods
.method public replaceColor(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "bitmap"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 96
    const/4 v0, 0x3

    new-array v9, v0, [F

    .line 97
    .local v9, hsv:[F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 98
    .local v1, pixels:[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 99
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v1

    if-ge v10, v0, :cond_1

    .line 100
    aget v11, v1, v10

    .line 101
    .local v11, pixel:I
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 102
    .local v8, alpha:I
    if-lez v8, :cond_0

    .line 103
    invoke-static {v11, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 104
    iget v0, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mColorToReplaceHue:F

    aget v3, v9, v2

    invoke-direct {p0, v0, v3}, Lcom/sonymobile/settings/util/ColorReplacer;->getHueDifference(FF)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_0

    .line 105
    aget v0, v9, v2

    iget v3, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mHueDiff:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/util/ColorReplacer;->normalizeAngle(F)F

    move-result v0

    aput v0, v9, v2

    .line 106
    aget v0, v9, v12

    iget v3, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mSaturationDiff:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/util/ColorReplacer;->normalize(F)F

    move-result v0

    aput v0, v9, v12

    .line 107
    aget v0, v9, v13

    iget v3, p0, Lcom/sonymobile/settings/util/ColorReplacer;->mValueDiff:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/util/ColorReplacer;->normalize(F)F

    move-result v0

    aput v0, v9, v13

    .line 108
    invoke-static {v8, v9}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    aput v0, v1, v10

    .line 99
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 112
    .end local v8           #alpha:I
    .end local v11           #pixel:I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
