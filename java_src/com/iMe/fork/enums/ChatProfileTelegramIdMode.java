package com.iMe.fork.enums;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
/* compiled from: ChatProfileTelegramIdMode.kt */
/* loaded from: classes3.dex */
public enum ChatProfileTelegramIdMode {
    TELEGRAM_API,
    BOT_API,
    DISABLED;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: ChatProfileTelegramIdMode.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatProfileTelegramIdMode.values().length];
            try {
                iArr[ChatProfileTelegramIdMode.TELEGRAM_API.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChatProfileTelegramIdMode.BOT_API.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChatProfileTelegramIdMode.DISABLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean isTelegramIdMode(ChatProfileTelegramIdMode chatProfileTelegramIdMode) {
        return Companion.isTelegramIdMode(chatProfileTelegramIdMode);
    }

    public static final ChatProfileTelegramIdMode mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    public final String getTitle() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            String internalString = LocaleController.getInternalString(C3634R.string.settings_tools_chat_profile_id_telegram_telegram_api);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…id_telegram_telegram_api)");
            return internalString;
        } else if (i == 2) {
            String internalString2 = LocaleController.getInternalString(C3634R.string.settings_tools_chat_profile_id_telegram_bot_api);
            Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…file_id_telegram_bot_api)");
            return internalString2;
        } else if (i == 3) {
            String string = LocaleController.getString("Disable", C3634R.string.Disable);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"Disable\", R.string.Disable)");
            return string;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: ChatProfileTelegramIdMode.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ChatProfileTelegramIdMode mapNameToEnum(String str) {
            ChatProfileTelegramIdMode chatProfileTelegramIdMode;
            ChatProfileTelegramIdMode[] values = ChatProfileTelegramIdMode.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    chatProfileTelegramIdMode = null;
                    break;
                }
                chatProfileTelegramIdMode = values[i];
                if (Intrinsics.areEqual(chatProfileTelegramIdMode.name(), str)) {
                    break;
                }
                i++;
            }
            return chatProfileTelegramIdMode == null ? ChatProfileTelegramIdMode.TELEGRAM_API : chatProfileTelegramIdMode;
        }

        public final boolean isTelegramIdMode(ChatProfileTelegramIdMode mode) {
            Intrinsics.checkNotNullParameter(mode, "mode");
            return mode == ChatProfileTelegramIdMode.TELEGRAM_API;
        }
    }
}
