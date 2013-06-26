.class public Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;
.super Landroid/preference/PreferenceFragment;
.source "TurnOnSmartAntiSpamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TurnOnSmartAntiSpamFragment"
.end annotation


# instance fields
.field mTurnOnSmartAntiSpam:Landroid/preference/CheckBoxPreference;

.field final synthetic this$0:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->this$0:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->addPreferencesFromResource(I)V

    .line 60
    const-string v0, "turn_on_smart_antispam"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->mTurnOnSmartAntiSpam:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v0, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->mTurnOnSmartAntiSpam:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment$1;-><init>(Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->mTurnOnSmartAntiSpam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "summaryId"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->mTurnOnSmartAntiSpam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 83
    return-void
.end method
