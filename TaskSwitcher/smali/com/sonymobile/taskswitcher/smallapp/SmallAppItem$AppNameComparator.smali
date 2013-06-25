.class public Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppNameComparator;
.super Ljava/lang/Object;
.source "SmallAppItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)I
    .locals 2
    .parameter "app1"
    .parameter "app2"

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    check-cast p1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .end local p1
    check-cast p2, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem$AppNameComparator;->compare(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)I

    move-result v0

    return v0
.end method
