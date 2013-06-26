.class Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment$1;
.super Ljava/lang/Object;
.source "TurnOnSmartAntiSpamActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment$1;->this$1:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment$1;->this$1:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    iget-object v1, v1, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->this$0:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;

    invoke-static {v1, v3}, Lmiui/provider/ExtraSettings$System;->setCloudAntispam(Landroid/content/Context;Z)V

    .line 67
    iget-object v1, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment$1;->this$1:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    iget-object v1, v1, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->mTurnOnSmartAntiSpam:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f070089

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 72
    :goto_0
    return v3

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment$1;->this$1:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    iget-object v1, v1, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->this$0:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/provider/ExtraSettings$System;->setCloudAntispam(Landroid/content/Context;Z)V

    .line 70
    iget-object v1, p0, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment$1;->this$1:Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;

    iget-object v1, v1, Lcom/miui/antispam/firewall/TurnOnSmartAntiSpamActivity$TurnOnSmartAntiSpamFragment;->mTurnOnSmartAntiSpam:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method
