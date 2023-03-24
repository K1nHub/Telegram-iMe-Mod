package org.fork.enums;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$TL_messageEntityBold;
import org.telegram.tgnet.TLRPC$TL_messageEntityCode;
import org.telegram.tgnet.TLRPC$TL_messageEntityItalic;
import org.telegram.tgnet.TLRPC$TL_messageEntitySpoiler;
import org.telegram.tgnet.TLRPC$TL_messageEntityStrike;
import org.telegram.tgnet.TLRPC$TL_messageEntityUnderline;
/* compiled from: SentMessageFont.kt */
/* loaded from: classes4.dex */
public enum SentMessageFont {
    REGULAR(0, null),
    BOLD(1, TLRPC$TL_messageEntityBold.class),
    ITALIC(2, TLRPC$TL_messageEntityItalic.class),
    UNDERLINE(16, TLRPC$TL_messageEntityUnderline.class),
    STRIKE(8, TLRPC$TL_messageEntityStrike.class),
    MONO(4, TLRPC$TL_messageEntityCode.class),
    SPOILER(256, TLRPC$TL_messageEntitySpoiler.class);
    
    public static final Companion Companion = new Companion(null);
    private final Class<? extends TLRPC$MessageEntity> clazz;
    private final int flag;

    /* compiled from: SentMessageFont.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SentMessageFont.values().length];
            try {
                iArr[SentMessageFont.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SentMessageFont.BOLD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SentMessageFont.ITALIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SentMessageFont.UNDERLINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SentMessageFont.STRIKE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SentMessageFont.MONO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SentMessageFont.SPOILER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final SentMessageFont mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    SentMessageFont(int i, Class cls) {
        this.flag = i;
        this.clazz = cls;
    }

    public final int getFlag() {
        return this.flag;
    }

    public final Class<? extends TLRPC$MessageEntity> getClazz() {
        return this.clazz;
    }

    public final String getTitle() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String string = LocaleController.getString("Regular", C3301R.string.Regular);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"Regular\", R.string.Regular)");
                return string;
            case 2:
                String string2 = LocaleController.getString("Bold", C3301R.string.Bold);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Bold\", R.string.Bold)");
                return string2;
            case 3:
                String string3 = LocaleController.getString("Italic", C3301R.string.Italic);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(\"Italic\", R.string.Italic)");
                return string3;
            case 4:
                String string4 = LocaleController.getString("Underline", C3301R.string.Underline);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(\"Underline\", R.string.Underline)");
                return string4;
            case 5:
                String string5 = LocaleController.getString("Strike", C3301R.string.Strike);
                Intrinsics.checkNotNullExpressionValue(string5, "getString(\"Strike\", R.string.Strike)");
                return string5;
            case 6:
                String string6 = LocaleController.getString("Mono", C3301R.string.Mono);
                Intrinsics.checkNotNullExpressionValue(string6, "getString(\"Mono\", R.string.Mono)");
                return string6;
            case 7:
                String string7 = LocaleController.getString("Spoiler", C3301R.string.Spoiler);
                Intrinsics.checkNotNullExpressionValue(string7, "getString(\"Spoiler\", R.string.Spoiler)");
                return string7;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: SentMessageFont.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SentMessageFont mapNameToEnum(String str) {
            SentMessageFont sentMessageFont;
            SentMessageFont[] values = SentMessageFont.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    sentMessageFont = null;
                    break;
                }
                sentMessageFont = values[i];
                if (Intrinsics.areEqual(sentMessageFont.name(), str)) {
                    break;
                }
                i++;
            }
            return sentMessageFont == null ? SentMessageFont.REGULAR : sentMessageFont;
        }
    }
}
