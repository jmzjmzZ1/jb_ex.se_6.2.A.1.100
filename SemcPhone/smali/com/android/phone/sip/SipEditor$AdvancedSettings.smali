.class Lcom/android/phone/sip/SipEditor$AdvancedSettings;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvancedSettings"
.end annotation


# instance fields
.field private mAdvancedSettingsTrigger:Landroid/preference/Preference;

.field private mPreferences:[Landroid/preference/Preference;

.field private mShowing:Z

.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;)V
    .locals 2
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 609
    invoke-virtual {p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f0b038e

    invoke-virtual {p1, v1}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    .line 611
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 613
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->loadAdvancedPreferences()V

    .line 614
    return-void
.end method

.method private hide()V
    .locals 7

    .prologue
    .line 645
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 646
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    const v6, 0x7f0b0396

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 647
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v5}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 648
    .local v4, screen:Landroid/preference/PreferenceGroup;
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .local v0, arr$:[Landroid/preference/Preference;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 649
    .local v3, pref:Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private loadAdvancedPreferences()V
    .locals 9

    .prologue
    .line 617
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v7}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 619
    .local v6, screen:Landroid/preference/PreferenceGroup;
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    const v8, 0x7f05000d

    invoke-virtual {v7, v8}, Lcom/android/phone/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 620
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    const v8, 0x7f0b03ae

    invoke-virtual {v7, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 622
    .local v0, group:Landroid/preference/PreferenceGroup;
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 624
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    new-array v7, v7, [Landroid/preference/Preference;

    iput-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .line 625
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 626
    .local v3, order:I
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    array-length v2, v7

    .local v2, n:I
    move v4, v3

    .end local v3           #order:I
    .local v4, order:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 627
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 628
    .local v5, pref:Landroid/preference/Preference;
    add-int/lit8 v3, v4, 0x1

    .end local v4           #order:I
    .restart local v3       #order:I
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 629
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    #calls: Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V
    invoke-static {v7, v5}, Lcom/android/phone/sip/SipEditor;->access$1000(Lcom/android/phone/sip/SipEditor;Landroid/preference/Preference;)V

    .line 630
    iget-object v7, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    aput-object v5, v7, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #order:I
    .restart local v4       #order:I
    goto :goto_0

    .line 632
    .end local v5           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 654
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "optional settings clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mShowing:Z

    if-nez v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->show()V

    .line 660
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->hide()V

    goto :goto_0
.end method

.method show()V
    .locals 8

    .prologue
    .line 635
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mShowing:Z

    .line 636
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mAdvancedSettingsTrigger:Landroid/preference/Preference;

    const v6, 0x7f0b0397

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 637
    iget-object v5, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v5}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 638
    .local v4, screen:Landroid/preference/PreferenceGroup;
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->mPreferences:[Landroid/preference/Preference;

    .local v0, arr$:[Landroid/preference/Preference;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 639
    .local v3, pref:Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 640
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add pref "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": order="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method
