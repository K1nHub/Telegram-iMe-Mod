package org.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: ChatProfileTelegramIdMode.kt */
/* loaded from: classes4.dex */
public enum ChatProfileTelegramIdMode {
    TELEGRAM_API(C3158R.string.settings_tools_chat_profile_id_telegram_telegram_api),
    BOT_API(C3158R.string.settings_tools_chat_profile_id_telegram_bot_api);
    
    public static final Companion Companion = new Companion(null);
    private final int textResId;

    public static final boolean isTelegramIdMode(ChatProfileTelegramIdMode chatProfileTelegramIdMode) {
        return Companion.isTelegramIdMode(chatProfileTelegramIdMode);
    }

    public static final ChatProfileTelegramIdMode mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    ChatProfileTelegramIdMode(int i) {
        this.textResId = i;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    /* compiled from: ChatProfileTelegramIdMode.kt */
    /* loaded from: classes4.dex */
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
