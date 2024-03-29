package org.telegram.p043ui.Components;

import android.os.Bundle;
import android.view.View;
import java.lang.reflect.GenericDeclaration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.MessagesController;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.TopicsFragment;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.BackButtonMenu */
/* loaded from: classes6.dex */
public class BackButtonMenu {

    /* renamed from: org.telegram.ui.Components.BackButtonMenu$PulledDialog */
    /* loaded from: classes6.dex */
    public static class PulledDialog<T> {
        Class<T> activity;
        TLRPC$Chat chat;
        long dialogId;
        int filterId;
        int folderId;
        int stackIndex;
        TLRPC$User user;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x023f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v14, types: [android.graphics.drawable.BitmapDrawable] */
    /* JADX WARN: Type inference failed for: r13v0, types: [android.widget.FrameLayout, android.view.View] */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.telegram.ui.ActionBar.ActionBarPopupWindow$ActionBarPopupWindowLayout, android.widget.FrameLayout, android.view.View] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.p043ui.ActionBar.ActionBarPopupWindow show(final org.telegram.p043ui.ActionBar.BaseFragment r25, android.view.View r26, long r27, long r29, org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r31) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.BackButtonMenu.show(org.telegram.ui.ActionBar.BaseFragment, android.view.View, long, long, org.telegram.ui.ActionBar.Theme$ResourcesProvider):org.telegram.ui.ActionBar.ActionBarPopupWindow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$0(AtomicReference atomicReference, PulledDialog pulledDialog, INavigationLayout iNavigationLayout, BaseFragment baseFragment, View view) {
        int i;
        Long l = null;
        if (atomicReference.get() != null) {
            ((ActionBarPopupWindow) atomicReference.getAndSet(null)).dismiss();
        }
        if (pulledDialog.stackIndex >= 0) {
            if (iNavigationLayout != null && iNavigationLayout.getFragmentStack() != null && pulledDialog.stackIndex < iNavigationLayout.getFragmentStack().size()) {
                BaseFragment baseFragment2 = iNavigationLayout.getFragmentStack().get(pulledDialog.stackIndex);
                if (baseFragment2 instanceof ChatActivity) {
                    l = Long.valueOf(((ChatActivity) baseFragment2).getDialogId());
                } else if (baseFragment2 instanceof ProfileActivity) {
                    l = Long.valueOf(((ProfileActivity) baseFragment2).getDialogId());
                }
            }
            if (l != null && l.longValue() != pulledDialog.dialogId) {
                for (int size = iNavigationLayout.getFragmentStack().size() - 2; size > pulledDialog.stackIndex; size--) {
                    iNavigationLayout.removeFragmentFromStack(size);
                }
            } else if (iNavigationLayout != null && iNavigationLayout.getFragmentStack() != null) {
                ArrayList arrayList = new ArrayList(iNavigationLayout.getFragmentStack());
                int size2 = arrayList.size() - 2;
                while (true) {
                    i = pulledDialog.stackIndex;
                    if (size2 <= i) {
                        break;
                    }
                    ((BaseFragment) arrayList.get(size2)).removeSelfFromStack();
                    size2--;
                }
                if (i < iNavigationLayout.getFragmentStack().size()) {
                    iNavigationLayout.closeLastFragment(true);
                    return;
                }
            }
        }
        goToPulledDialog(baseFragment, pulledDialog);
    }

    private static ArrayList<PulledDialog> getStackedHistoryForTopic(BaseFragment baseFragment, long j, long j2) {
        ArrayList<PulledDialog> arrayList = new ArrayList<>();
        if (baseFragment.getParentLayout().getFragmentStack().size() > 1 && (baseFragment.getParentLayout().getFragmentStack().get(baseFragment.getParentLayout().getFragmentStack().size() - 2) instanceof TopicsFragment)) {
            PulledDialog pulledDialog = new PulledDialog();
            arrayList.add(pulledDialog);
            pulledDialog.stackIndex = 0;
            pulledDialog.activity = DialogsActivity.class;
            PulledDialog pulledDialog2 = new PulledDialog();
            arrayList.add(pulledDialog2);
            pulledDialog2.stackIndex = baseFragment.getParentLayout().getFragmentStack().size() - 2;
            pulledDialog2.activity = TopicsFragment.class;
            pulledDialog2.chat = MessagesController.getInstance(baseFragment.getCurrentAccount()).getChat(Long.valueOf(-j));
            return arrayList;
        }
        PulledDialog pulledDialog3 = new PulledDialog();
        arrayList.add(pulledDialog3);
        pulledDialog3.stackIndex = -1;
        pulledDialog3.activity = TopicsFragment.class;
        pulledDialog3.chat = MessagesController.getInstance(baseFragment.getCurrentAccount()).getChat(Long.valueOf(-j));
        return arrayList;
    }

    public static void goToPulledDialog(BaseFragment baseFragment, PulledDialog pulledDialog) {
        if (pulledDialog == null) {
            return;
        }
        GenericDeclaration genericDeclaration = pulledDialog.activity;
        if (genericDeclaration == ChatActivity.class) {
            Bundle bundle = new Bundle();
            TLRPC$Chat tLRPC$Chat = pulledDialog.chat;
            if (tLRPC$Chat != null) {
                bundle.putLong("chat_id", tLRPC$Chat.f1602id);
            } else {
                TLRPC$User tLRPC$User = pulledDialog.user;
                if (tLRPC$User != null) {
                    bundle.putLong("user_id", tLRPC$User.f1751id);
                }
            }
            bundle.putInt("dialog_folder_id", pulledDialog.folderId);
            bundle.putInt("dialog_filter_id", pulledDialog.filterId);
            baseFragment.presentFragment(new ChatActivity(bundle), true);
        } else if (genericDeclaration == ProfileActivity.class) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("dialog_id", pulledDialog.dialogId);
            baseFragment.presentFragment(new ProfileActivity(bundle2), true);
        }
        if (pulledDialog.activity == TopicsFragment.class) {
            Bundle bundle3 = new Bundle();
            bundle3.putLong("chat_id", pulledDialog.chat.f1602id);
            baseFragment.presentFragment(new TopicsFragment(bundle3), true);
        }
        if (pulledDialog.activity == DialogsActivity.class) {
            baseFragment.presentFragment(new DialogsActivity(null), true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x009d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<org.telegram.p043ui.Components.BackButtonMenu.PulledDialog> getStackedHistoryDialogs(org.telegram.p043ui.ActionBar.BaseFragment r18, long r19) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.BackButtonMenu.getStackedHistoryDialogs(org.telegram.ui.ActionBar.BaseFragment, long):java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getStackedHistoryDialogs$1(PulledDialog pulledDialog, PulledDialog pulledDialog2) {
        return pulledDialog2.stackIndex - pulledDialog.stackIndex;
    }

    public static void addToPulledDialogs(BaseFragment baseFragment, int i, TLRPC$Chat tLRPC$Chat, TLRPC$User tLRPC$User, long j, int i2, int i3) {
        INavigationLayout parentLayout;
        if ((tLRPC$Chat == null && tLRPC$User == null) || baseFragment == null || (parentLayout = baseFragment.getParentLayout()) == null) {
            return;
        }
        if (parentLayout.getPulledDialogs() == null) {
            parentLayout.setPulledDialogs(new ArrayList());
        }
        boolean z = false;
        Iterator<PulledDialog> it = parentLayout.getPulledDialogs().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().dialogId == j) {
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        PulledDialog pulledDialog = new PulledDialog();
        pulledDialog.activity = ChatActivity.class;
        pulledDialog.stackIndex = i;
        pulledDialog.dialogId = j;
        pulledDialog.filterId = i3;
        pulledDialog.folderId = i2;
        pulledDialog.chat = tLRPC$Chat;
        pulledDialog.user = tLRPC$User;
        parentLayout.getPulledDialogs().add(pulledDialog);
    }

    public static void clearPulledDialogs(BaseFragment baseFragment, int i) {
        INavigationLayout parentLayout;
        if (baseFragment == null || (parentLayout = baseFragment.getParentLayout()) == null || parentLayout.getPulledDialogs() == null) {
            return;
        }
        int i2 = 0;
        while (i2 < parentLayout.getPulledDialogs().size()) {
            if (parentLayout.getPulledDialogs().get(i2).stackIndex > i) {
                parentLayout.getPulledDialogs().remove(i2);
                i2--;
            }
            i2++;
        }
    }
}
