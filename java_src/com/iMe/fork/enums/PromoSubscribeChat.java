package com.iMe.fork.enums;

import org.telegram.messenger.C3290R;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum DISCUSSION_GROUP uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: PromoSubscribeChat.kt */
/* loaded from: classes3.dex */
public final class PromoSubscribeChat {
    private static final /* synthetic */ PromoSubscribeChat[] $VALUES;
    public static final PromoSubscribeChat DISCUSSION_GROUP;
    public static final PromoSubscribeChat LIME_GROUP;
    private final int descriptionResId;

    /* renamed from: id */
    private final long f260id;
    private final int rightIconResId;
    private final String username;
    public static final PromoSubscribeChat RU_NEWS_CHANNEL = new PromoSubscribeChat("RU_NEWS_CHANNEL", 0, -1233992278, "ime_ru", C3290R.string.dialog_promo_ru_news_channel_description, C3290R.C3292drawable.fork_promo_ru_news_channel);
    public static final PromoSubscribeChat EN_NEWS_CHANNEL = new PromoSubscribeChat("EN_NEWS_CHANNEL", 1, -1348298652, "ime_en", C3290R.string.dialog_promo_en_news_channel_description, C3290R.C3292drawable.fork_promo_en_news_channel);

    private static final /* synthetic */ PromoSubscribeChat[] $values() {
        return new PromoSubscribeChat[]{RU_NEWS_CHANNEL, EN_NEWS_CHANNEL, DISCUSSION_GROUP, LIME_GROUP};
    }

    public static PromoSubscribeChat valueOf(String str) {
        return (PromoSubscribeChat) Enum.valueOf(PromoSubscribeChat.class, str);
    }

    public static PromoSubscribeChat[] values() {
        return (PromoSubscribeChat[]) $VALUES.clone();
    }

    private PromoSubscribeChat(String str, int i, long j, String str2, int i2, int i3) {
        this.f260id = j;
        this.username = str2;
        this.descriptionResId = i2;
        this.rightIconResId = i3;
    }

    public final int getDescriptionResId() {
        return this.descriptionResId;
    }

    public final long getId() {
        return this.f260id;
    }

    public final int getRightIconResId() {
        return this.rightIconResId;
    }

    public final String getUsername() {
        return this.username;
    }

    static {
        int i = C3290R.string.dialog_promo_discussion_group_description;
        int i2 = C3290R.C3292drawable.fork_promo_discussion_group;
        DISCUSSION_GROUP = new PromoSubscribeChat("DISCUSSION_GROUP", 2, -1333667783L, "ime_ai", i, i2);
        LIME_GROUP = new PromoSubscribeChat("LIME_GROUP", 3, -1285458230L, "imelime", i, i2);
        $VALUES = $values();
    }
}
