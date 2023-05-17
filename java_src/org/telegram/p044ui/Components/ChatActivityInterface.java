package org.telegram.p044ui.Components;

import org.telegram.messenger.ChatObject;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.ChatActivityInterface */
/* loaded from: classes6.dex */
public interface ChatActivityInterface {

    /* renamed from: org.telegram.ui.Components.ChatActivityInterface$-CC */
    /* loaded from: classes6.dex */
    public final /* synthetic */ class CC {
        public static void $default$checkAndUpdateAvatar(ChatActivityInterface chatActivityInterface) {
        }

        public static TLRPC$User $default$getCurrentUser(ChatActivityInterface chatActivityInterface) {
            return null;
        }

        public static long $default$getMergeDialogId(ChatActivityInterface chatActivityInterface) {
            return 0L;
        }

        public static int $default$getTopicId(ChatActivityInterface chatActivityInterface) {
            return 0;
        }

        public static boolean $default$openedWithLivestream(ChatActivityInterface chatActivityInterface) {
            return false;
        }

        public static void $default$scrollToMessageId(ChatActivityInterface chatActivityInterface, int i, int i2, boolean z, int i3, boolean z2, int i4) {
        }

        public static boolean $default$shouldShowImport(ChatActivityInterface chatActivityInterface) {
            return false;
        }
    }

    void checkAndUpdateAvatar();

    C3356ActionBar getActionBar();

    ChatAvatarContainer getAvatarContainer();

    SizeNotifierFrameLayout getContentView();

    TLRPC$Chat getCurrentChat();

    TLRPC$User getCurrentUser();

    long getDialogId();

    ChatObject.Call getGroupCall();

    long getMergeDialogId();

    Theme.ResourcesProvider getResourceProvider();

    int getTopicId();

    boolean openedWithLivestream();

    void scrollToMessageId(int i, int i2, boolean z, int i3, boolean z2, int i4);

    boolean shouldShowImport();
}
