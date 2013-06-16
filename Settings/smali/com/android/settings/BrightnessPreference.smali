.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAutoBright:Landroid/widget/RadioButton;

.field private mAutoPowerSave:Landroid/widget/RadioButton;

.field private mAutomaticAvailable:Z

.field private mAutomaticOptions:Landroid/widget/LinearLayout;

.field private mAutomaticOptionsAvailable:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurBrightness:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 73
    new-instance v0, Lcom/android/settings/BrightnessPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessPreference$1;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 81
    new-instance v0, Lcom/android/settings/BrightnessPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessPreference$2;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticOptionsAvailable:Z

    .line 96
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 4

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, brightness:I
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    if-gez v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 250
    :goto_0
    return v0

    .line 248
    :cond_0
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 254
    move v0, p1

    .line 256
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :goto_0
    return v0

    .line 258
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->getBrightness()I

    move-result v1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 265
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 270
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 271
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 293
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 295
    :cond_1
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 3
    .parameter "brightness"
    .parameter "write"

    .prologue
    .line 302
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 304
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 307
    :cond_0
    if-eqz p2, :cond_1

    .line 308
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 310
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "screen_brightness"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 313
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_1
    iput p1, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    return-void
.end method

.method private showRadioButtonsOrSeekBar(ZI)V
    .locals 4
    .parameter "automatic"
    .parameter "brightness"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    if-eqz p1, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mAutoBright:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 239
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mAutoBright:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mAutoPowerSave:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v1, v1, 0xff

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mAutoPowerSave:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 117
    invoke-static {p1}, Lcom/android/settings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 118
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v4, v4, 0xff

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->getBrightness()I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 120
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 122
    const v1, 0x7f0800ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 123
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v1, :cond_0

    .line 125
    const v1, 0x7f0800cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticOptions:Landroid/widget/LinearLayout;

    .line 126
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticOptionsAvailable:Z

    if-eqz v1, :cond_1

    .line 127
    const v1, 0x7f0800cf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoBright:Landroid/widget/RadioButton;

    .line 128
    const v1, 0x7f0800d0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoPowerSave:Landroid/widget/RadioButton;

    .line 129
    const v1, 0x7f0800ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 130
    .local v0, radioGroup:Landroid/widget/RadioGroup;
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 135
    .end local v0           #radioGroup:Landroid/widget/RadioGroup;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    invoke-direct {p0, v3}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 137
    iget-object v4, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticOptionsAvailable:Z

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/BrightnessPreference;->showRadioButtonsOrSeekBar(ZI)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 147
    return-void

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticOptions:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 137
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 163
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticOptionsAvailable:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/BrightnessPreference;->showRadioButtonsOrSeekBar(ZI)V

    .line 170
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 163
    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "radioGroup"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mAutoBright:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 187
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v1, v1, 0xff

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 287
    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 151
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 152
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 357
    :goto_0
    return-void

    .line 350
    :cond_1
    check-cast p1, Lcom/android/settings/BrightnessPreference$SavedState;

    .line 351
    invoke-virtual {p1}, Lcom/android/settings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 352
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 353
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 354
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 355
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessPreference;->setBrightness(IZ)V

    .line 356
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->curBrightness:I

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 353
    goto :goto_1

    :cond_3
    move v1, v2

    .line 354
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 326
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 327
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 339
    :goto_0
    return-object v0

    .line 330
    :cond_1
    new-instance v0, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 331
    .local v0, myState:Lcom/android/settings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    .line 332
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    .line 333
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 334
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    .line 335
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->curBrightness:I

    .line 338
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    .line 333
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 156
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 160
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 101
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    .line 111
    return-void
.end method
