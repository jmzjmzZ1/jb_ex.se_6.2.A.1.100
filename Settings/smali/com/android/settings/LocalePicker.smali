.class public Lcom/android/settings/LocalePicker;
.super Landroid/app/DialogFragment;
.source "LocalePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePicker$3;,
        Lcom/android/settings/LocalePicker$AccessibilityGestureListener;,
        Lcom/android/settings/LocalePicker$GestureState;,
        Lcom/android/settings/LocalePicker$AccessibilityTouchListener;
    }
.end annotation


# instance fields
.field private mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

.field private mLocaleAtStart:Ljava/util/Locale;

.field private mLocaleSelected:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocalePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;->selectLocale()V

    return-void
.end method

.method private selectLocale()V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 175
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 190
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    invoke-virtual {v1, p2}, Lcom/sonymobile/settings/LocaleAdapter;->getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v0

    .line 142
    .local v0, info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePicker;->onLocaleSelected(Ljava/util/Locale;)V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    new-instance v1, Ljava/util/Locale;

    const-string v2, "savedLanguage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "savedCountry"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    .line 100
    :goto_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePicker;->setShowsDialog(Z)V

    .line 102
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    .line 97
    .local v0, activity:Lcom/android/settings/Settings;
    invoke-virtual {v0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    .line 98
    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/settings/LocalePicker;->mLocaleAtStart:Ljava/util/Locale;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 106
    new-instance v3, Lcom/sonymobile/settings/LocaleAdapter$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/settings/LocaleAdapter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->create()Lcom/sonymobile/settings/LocaleAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    .line 107
    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    iget-object v4, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Lcom/sonymobile/settings/LocaleAdapter;->getPosition(Ljava/util/Locale;)I

    move-result v2

    .line 108
    .local v2, selectedPos:I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    invoke-virtual {v3, v4, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/LocalePicker$2;

    invoke-direct {v5, p0}, Lcom/android/settings/LocalePicker$2;-><init>(Lcom/android/settings/LocalePicker;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/LocalePicker$1;

    invoke-direct {v5, p0}, Lcom/android/settings/LocalePicker$1;-><init>(Lcom/android/settings/LocalePicker;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b047e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 125
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    .line 126
    .local v0, activity:Lcom/android/settings/Settings;
    invoke-virtual {v0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_is_from_setup_guide"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/settings/LocalePicker$AccessibilityTouchListener;

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/LocalePicker$AccessibilityTouchListener;-><init>(Lcom/android/settings/LocalePicker;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    :cond_0
    return-object v1
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 8
    .parameter "locale"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    .line 150
    .local v0, activity:Lcom/android/settings/Settings;
    invoke-virtual {v0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 151
    .local v4, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 152
    .local v2, localeConf:Landroid/content/res/Configuration;
    iput-object p1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 153
    new-instance v3, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-direct {v3, v5, v6, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 156
    .local v3, localeRes:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 158
    .local v1, dialog:Landroid/app/AlertDialog;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const/4 v5, -0x2

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v5, 0x7f0b047e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v5, p0, Lcom/android/settings/LocalePicker;->mLocaleAtStart:Ljava/util/Locale;

    iput-object v5, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 168
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 171
    .end local v0           #activity:Lcom/android/settings/Settings;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #localeConf:Landroid/content/res/Configuration;
    .end local v3           #localeRes:Landroid/content/res/Resources;
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->onLocaleSelected(Ljava/util/Locale;)V

    .line 138
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 180
    const-string v0, "savedLanguage"

    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "savedCountry"

    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mLocaleSelected:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    return-void
.end method
