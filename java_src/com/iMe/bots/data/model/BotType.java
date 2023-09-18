package com.iMe.bots.data.model;

import com.iMe.bots.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum RECENT uses external variables
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
/* compiled from: BotType.kt */
/* loaded from: classes4.dex */
public final class BotType {
    private static final /* synthetic */ BotType[] $VALUES;
    public static final Companion Companion;
    public static final BotType HOLIDAYS;
    public static final BotType NEURO = new BotType("NEURO", 0, R$string.bot_label_neuro);
    public static final BotType RECENT;
    private final int resId;

    private static final /* synthetic */ BotType[] $values() {
        return new BotType[]{NEURO, RECENT, HOLIDAYS};
    }

    public static BotType valueOf(String str) {
        return (BotType) Enum.valueOf(BotType.class, str);
    }

    public static BotType[] values() {
        return (BotType[]) $VALUES.clone();
    }

    private BotType(String str, int i, int i2) {
        this.resId = i2;
    }

    public final int getResId() {
        return this.resId;
    }

    static {
        int i = R$string.bot_label_normal;
        RECENT = new BotType("RECENT", 1, i);
        HOLIDAYS = new BotType("HOLIDAYS", 2, i);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: BotType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BotType resolveByName(String name) {
            BotType botType;
            Intrinsics.checkNotNullParameter(name, "name");
            BotType[] values = BotType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    botType = null;
                    break;
                }
                botType = values[i];
                if (Intrinsics.areEqual(botType.name(), name)) {
                    break;
                }
                i++;
            }
            return botType == null ? BotType.NEURO : botType;
        }

        public final BotType resolveById(String botId) {
            Intrinsics.checkNotNullParameter(botId, "botId");
            return Intrinsics.areEqual(botId, "holidays") ? BotType.HOLIDAYS : Intrinsics.areEqual(botId, "recent") ? BotType.RECENT : BotType.NEURO;
        }
    }
}
