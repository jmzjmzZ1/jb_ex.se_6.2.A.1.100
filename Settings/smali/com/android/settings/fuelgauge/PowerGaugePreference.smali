.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Landroid/preference/Preference;
.source "PowerGaugePreference.java"


# instance fields
.field private mInfo:Lcom/android/settings/fuelgauge/BatterySipper;

.field private mProgress:I

.field private mProgressText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V
    .locals 5
    .parameter "context"
    .parameter "icon"
    .parameter "info"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    const v4, 0x7f040006

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setLayoutResource(I)V

    .line 50
    iget v4, p3, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    if-lez v4, :cond_0

    .line 51
    new-instance v1, Lcom/sonymobile/settings/util/ColorReplacer;

    invoke-direct {v1, p1}, Lcom/sonymobile/settings/util/ColorReplacer;-><init>(Landroid/content/Context;)V

    .line 52
    .local v1, colorReplacer:Lcom/sonymobile/settings/util/ColorReplacer;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    .local v2, resources:Landroid/content/res/Resources;
    iget v4, p3, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/util/ColorReplacer;->replaceColor(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 57
    .local v3, themedBitmap:Landroid/graphics/Bitmap;
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 60
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #colorReplacer:Lcom/sonymobile/settings/util/ColorReplacer;
    .end local v2           #resources:Landroid/content/res/Resources;
    .end local v3           #themedBitmap:Landroid/graphics/Bitmap;
    .restart local p2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iput-object p3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatterySipper;

    .line 62
    return-void
.end method


# virtual methods
.method getInfo()Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatterySipper;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 80
    .local v0, progress:Landroid/widget/ProgressBar;
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, text1:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public setPercent(DD)V
    .locals 6
    .parameter "percentOfMax"
    .parameter "percentOfTotal"

    .prologue
    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b06a2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgressText:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 69
    return-void
.end method
