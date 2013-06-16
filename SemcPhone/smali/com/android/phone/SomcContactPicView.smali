.class public Lcom/android/phone/SomcContactPicView;
.super Landroid/widget/ImageView;
.source "SomcContactPicView.java"


# instance fields
.field private mBorderLeft:I

.field private mBorderTop:I

.field private final mDefaultPictureGradient:Landroid/graphics/LinearGradient;

.field private mFrameBitmap:Landroid/graphics/Bitmap;

.field private mIsFrameVisible:Z

.field private mLargePictureWidth:I

.field private mMiddlePictureWidth:I

.field private mModeIn:Landroid/graphics/PorterDuffXfermode;

.field private mModeOver:Landroid/graphics/PorterDuffXfermode;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPictureGradient:Landroid/graphics/LinearGradient;

.field private mRectGradient:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/SomcContactPicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/SomcContactPicView;->mIsFrameVisible:Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/phone/SomcContactPicView;->setDensityScale(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0}, Lcom/android/phone/SomcContactPicView;->initPictureGradient()Landroid/graphics/LinearGradient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mDefaultPictureGradient:Landroid/graphics/LinearGradient;

    .line 101
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/phone/SomcContactPicView;->mLargePictureWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/phone/SomcContactPicView;->mLargePictureWidth:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mRectGradient:Landroid/graphics/RectF;

    .line 102
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mModeOver:Landroid/graphics/PorterDuffXfermode;

    .line 103
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mModeIn:Landroid/graphics/PorterDuffXfermode;

    .line 105
    if-nez p2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "SomcContactPicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Converting resource to bitmap failed in constructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPictureGradient()Landroid/graphics/LinearGradient;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 123
    .local v9, r:Landroid/content/res/Resources;
    const v0, 0x7f060009

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 124
    .local v5, colorArray:[I
    const v0, 0x7f06000a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, strArray:[Ljava/lang/String;
    array-length v0, v10

    new-array v6, v0, [F

    .line 127
    .local v6, positionArray:[F
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v10

    if-ge v8, v0, :cond_0

    .line 128
    aget-object v0, v10, v8

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v8

    .line 127
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/phone/SomcContactPicView;->mLargePictureWidth:I

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method

.method private setCarModeContactPhotoPading(Z)V
    .locals 9
    .parameter "isFullScreen"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 294
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 331
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 298
    const/4 v5, 0x0

    invoke-super {p0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 301
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 329
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcContactPicView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->invalidate()V

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 304
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 306
    .local v3, metrics:Landroid/util/DisplayMetrics;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const v6, 0x7f090015

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 311
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 314
    .local v2, marginTop:I
    const v5, 0x7f02000c

    invoke-super {p0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 316
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 317
    const v5, 0x7f090017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 320
    .local v1, marginRight:I
    invoke-virtual {v0, v8, v2, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 321
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 322
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 324
    .end local v1           #marginRight:I
    :cond_2
    invoke-virtual {v0, v8, v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 325
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method private setCarModeDefaultPhotoMargin()V
    .locals 8

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 266
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 291
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 272
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 273
    .local v3, metrics:Landroid/util/DisplayMetrics;
    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 276
    .local v2, marginTop:I
    const/4 v5, 0x0

    invoke-super {p0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 278
    const v5, 0x7f090017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 281
    .local v1, marginRight:I
    invoke-virtual {v0, v7, v2, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 282
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    .end local v1           #marginRight:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcContactPicView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->invalidate()V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 287
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method private setDensityScale(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f090010

    .line 253
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 254
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 255
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/SomcContactPicView;->mLargePictureWidth:I

    .line 256
    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/SomcContactPicView;->mMiddlePictureWidth:I

    .line 257
    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/SomcContactPicView;->mPaddingTop:I

    .line 258
    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/SomcContactPicView;->mPaddingBottom:I

    .line 259
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/SomcContactPicView;->mPaddingLeft:I

    .line 260
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/SomcContactPicView;->mPaddingRight:I

    .line 261
    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/SomcContactPicView;->mBorderTop:I

    .line 262
    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/SomcContactPicView;->mBorderLeft:I

    .line 263
    return-void
.end method

.method private setPadding(II)V
    .locals 4
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    iget v0, p0, Lcom/android/phone/SomcContactPicView;->mLargePictureWidth:I

    if-lt p1, v0, :cond_0

    .line 229
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcContactPicView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 230
    invoke-direct {p0, v2}, Lcom/android/phone/SomcContactPicView;->setCarModeContactPhotoPading(Z)V

    .line 231
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 243
    :goto_0
    return-void

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/phone/SomcContactPicView;->mLargePictureWidth:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/phone/SomcContactPicView;->mMiddlePictureWidth:I

    if-lt p1, v0, :cond_1

    .line 234
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcContactPicView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 235
    invoke-direct {p0, v2}, Lcom/android/phone/SomcContactPicView;->setCarModeContactPhotoPading(Z)V

    .line 236
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0

    .line 239
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcContactPicView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 240
    invoke-direct {p0, v1}, Lcom/android/phone/SomcContactPicView;->setCarModeContactPhotoPading(Z)V

    .line 241
    iget v0, p0, Lcom/android/phone/SomcContactPicView;->mPaddingLeft:I

    iget v1, p0, Lcom/android/phone/SomcContactPicView;->mPaddingTop:I

    iget v2, p0, Lcom/android/phone/SomcContactPicView;->mPaddingRight:I

    iget v3, p0, Lcom/android/phone/SomcContactPicView;->mPaddingBottom:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->getPaddingLeft()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->getPaddingTop()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 148
    .local v0, padding:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/SomcContactPicView;->mIsFrameVisible:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mModeOver:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 151
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mFrameBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/phone/SomcContactPicView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/phone/SomcContactPicView;->mBorderLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/phone/SomcContactPicView;->mPaddingTop:I

    iget v4, p0, Lcom/android/phone/SomcContactPicView;->mBorderTop:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPictureGradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mPictureGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 159
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 161
    iget-object v1, p0, Lcom/android/phone/SomcContactPicView;->mRectGradient:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 163
    :cond_1
    return-void

    .line 145
    .end local v0           #padding:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 206
    iget-object v0, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/phone/SomcContactPicView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public setFrameVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/phone/SomcContactPicView;->mIsFrameVisible:Z

    .line 218
    return-void
.end method

.method public final setImage(I)V
    .locals 3
    .parameter "resource"

    .prologue
    const/4 v2, 0x0

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/SomcContactPicView;->mPictureGradient:Landroid/graphics/LinearGradient;

    .line 173
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/SomcContactPicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    invoke-direct {p0}, Lcom/android/phone/SomcContactPicView;->setCarModeDefaultPhotoMargin()V

    .line 178
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcContactPicView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 179
    invoke-super {p0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcContactPicView;->setImageResource(I)V

    .line 182
    return-void
.end method

.method public final setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/phone/SomcContactPicView;->mDefaultPictureGradient:Landroid/graphics/LinearGradient;

    iput-object v2, p0, Lcom/android/phone/SomcContactPicView;->mPictureGradient:Landroid/graphics/LinearGradient;

    .line 191
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 192
    .local v1, imageWidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 194
    .local v0, imageHeight:I
    invoke-direct {p0, v1, v0}, Lcom/android/phone/SomcContactPicView;->setPadding(II)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcContactPicView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    return-void
.end method
