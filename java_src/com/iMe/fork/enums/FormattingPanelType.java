package com.iMe.fork.enums;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
/* compiled from: FormattingPanelType.kt */
/* loaded from: classes3.dex */
public enum FormattingPanelType {
    DEFAULT,
    ALTERNATIVE_WEB,
    ALTERNATIVE_KEYBOARD;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: FormattingPanelType.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FormattingPanelType.values().length];
            try {
                iArr[FormattingPanelType.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormattingPanelType.ALTERNATIVE_WEB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormattingPanelType.ALTERNATIVE_KEYBOARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final FormattingPanelType mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    public final String getTitle() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            String string = LocaleController.getString("Default", C3630R.string.Default);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"Default\", R.string.Default)");
            return string;
        } else if (i == 2) {
            String internalString = LocaleController.getInternalString(C3630R.string.settings_messages_formatting_alternative_web);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…rmatting_alternative_web)");
            return internalString;
        } else if (i == 3) {
            String internalString2 = LocaleController.getInternalString(C3630R.string.settings_messages_formatting_alternative_keybord);
            Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…ting_alternative_keybord)");
            return internalString2;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: FormattingPanelType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FormattingPanelType mapNameToEnum(String str) {
            FormattingPanelType formattingPanelType;
            FormattingPanelType[] values = FormattingPanelType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    formattingPanelType = null;
                    break;
                }
                formattingPanelType = values[i];
                if (Intrinsics.areEqual(formattingPanelType.name(), str)) {
                    break;
                }
                i++;
            }
            return formattingPanelType == null ? FormattingPanelType.DEFAULT : formattingPanelType;
        }
    }
}
