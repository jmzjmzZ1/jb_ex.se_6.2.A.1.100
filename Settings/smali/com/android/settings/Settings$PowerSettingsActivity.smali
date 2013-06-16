.class public Lcom/android/settings/Settings$PowerSettingsActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 842
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 844
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 845
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sonymobile.superstamina"

    const-string v2, "com.sonymobile.superstamina.settings.SettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$PowerSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/Settings$PowerSettingsActivity;->finish()V

    .line 849
    return-void
.end method
