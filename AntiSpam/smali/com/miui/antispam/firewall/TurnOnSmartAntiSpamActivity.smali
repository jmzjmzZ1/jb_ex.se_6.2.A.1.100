.class public Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;
.super Landroid/app/Activity;
.source "TurnOnSmartAntiSpamActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;->setContentView(I)V

    .line 26
    new-instance v0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;-><init>(Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;->mFragment:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    .line 27
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09001e

    iget-object v2, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;->mFragment:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 29
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 35
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "is_turn_on_antispam_set"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    .local v1, isSet:Z
    if-nez v1, :cond_0

    .line 38
    invoke-static {p0, v6}, Lmiui/provider/ExtraSettings$System;->setCloudAntispam(Landroid/content/Context;Z)V

    .line 39
    iget-object v4, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;->mFragment:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    invoke-virtual {v4, v6}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->setChecked(Z)V

    .line 41
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "is_turn_on_antispam_set"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Lmiui/provider/ExtraSettings$System;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result v0

    .line 44
    .local v0, isEnable:Z
    if-eqz v0, :cond_1

    const v3, 0x7f070089

    .line 46
    .local v3, summaryId:I
    :goto_1
    iget-object v4, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;->mFragment:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    invoke-virtual {v4, v0}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->setChecked(Z)V

    .line 47
    iget-object v4, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;->mFragment:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    invoke-virtual {v4, v3}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->setSummary(I)V

    goto :goto_0

    .line 44
    .end local v3           #summaryId:I
    :cond_1
    const v3, 0x7f07008a

    goto :goto_1
.end method
