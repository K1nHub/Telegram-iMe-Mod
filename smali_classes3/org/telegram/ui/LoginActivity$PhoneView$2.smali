.class Lorg/telegram/ui/LoginActivity$PhoneView$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$PhoneView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 2073
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    .line 2086
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3200(Lorg/telegram/ui/LoginActivity$PhoneView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2089
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3202(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    .line 2090
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3300(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2091
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3300(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2092
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2093
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v3}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3400(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V

    .line 2094
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2095
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3502(Lorg/telegram/ui/LoginActivity$PhoneView;I)I

    goto/16 :goto_7

    .line 2100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v4, "phone_code_last_matched_"

    const/4 v5, 0x4

    if-le v1, v5, :cond_8

    :goto_0
    if-lt v5, v0, :cond_7

    .line 2102
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2104
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3600(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_2

    move-object v6, v3

    goto :goto_1

    .line 2107
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v0, :cond_4

    .line 2108
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2111
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v7, :cond_5

    .line 2113
    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v8}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3700(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2114
    iget-object v10, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v10, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, v9

    goto :goto_1

    .line 2121
    :cond_4
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    .line 2126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2127
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3300(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_7
    move-object v1, v3

    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_9

    .line 2132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2133
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3300(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v6

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    move-object v1, v3

    const/4 v5, 0x0

    .line 2139
    :cond_9
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3700(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, v3

    const/4 v7, 0x0

    :cond_a
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2140
    iget-object v10, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    add-int/lit8 v7, v7, 0x1

    .line 2142
    iget-object v10, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v8, :cond_b

    .line 2143
    iget-object v8, v8, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    iget-object v10, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v7, v7, -0x1

    :cond_b
    move-object v8, v9

    goto :goto_4

    :cond_c
    if-ne v7, v0, :cond_d

    if-eqz v8, :cond_d

    if-nez v1, :cond_d

    .line 2151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2152
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3300(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    iget-object v6, v8, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object p1, v6

    .line 2155
    :cond_d
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3600(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_e

    move-object v6, v3

    goto :goto_5

    .line 2158
    :cond_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v0, :cond_10

    .line 2159
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2162
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v4, :cond_11

    .line 2164
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3700(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2165
    iget-object v9, v8, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v9, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object v6, v8

    goto :goto_5

    .line 2172
    :cond_10
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_11
    :goto_5
    if-eqz v6, :cond_12

    .line 2176
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v3, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3802(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    .line 2177
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0, v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3902(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/CountrySelectActivity$Country;)Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2178
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0, p1, v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$4000(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2179
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3502(Lorg/telegram/ui/LoginActivity$PhoneView;I)I

    goto :goto_6

    .line 2181
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v3}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3400(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V

    .line 2182
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2183
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3502(Lorg/telegram/ui/LoginActivity$PhoneView;I)I

    :goto_6
    if-nez v5, :cond_13

    .line 2186
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3300(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3300(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_13
    if-eqz v1, :cond_14

    .line 2189
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2190
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2191
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3000(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 2194
    :cond_14
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$3202(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
