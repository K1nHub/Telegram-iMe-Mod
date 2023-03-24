package com.smedialink.utils.helper.reaction;

import android.app.Activity;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.storage.common.AppConfiguration$Reaction;
import com.smedialink.utils.dialogs.DialogUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.p046ui.fragment.CreateReactionButtonsActivity;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.tgnet.TLRPC$Dialog;
/* compiled from: ReactionHelper.kt */
/* loaded from: classes3.dex */
public final class ReactionHelper {
    public static final ReactionHelper INSTANCE = new ReactionHelper();

    private ReactionHelper() {
    }

    public final String formatUuid(String uuid) {
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        return "File to put in iMe Like Message with id = " + uuid;
    }

    public static final void showReactionActivationAlert(final BaseFragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Activity parentActivity = fragment.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        DialogUtils.createDialog$default(parentActivity, new DialogModel(LocaleController.getInternalString(C3301R.string.chat_reaction_dialog_title), LocaleController.getInternalString(C3301R.string.chat_reaction_dialog_text), LocaleController.getInternalString(C3301R.string.common_cancel), LocaleController.getInternalString(C3301R.string.chat_reaction_start)), new Callbacks$Callback() { // from class: com.smedialink.utils.helper.reaction.ReactionHelper$$ExternalSyntheticLambda0
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                ReactionHelper.showReactionActivationAlert$lambda$0(BaseFragment.this);
            }
        }, null, 8, null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showReactionActivationAlert$lambda$0(BaseFragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        INSTANCE.openReactionBot(fragment);
    }

    public static final boolean checkReactionWork(int i) {
        boolean z;
        ArrayList<TLRPC$Dialog> allDialogs = MessagesController.getInstance(i).getAllDialogs();
        Intrinsics.checkNotNullExpressionValue(allDialogs, "getInstance(currentAccount).allDialogs");
        boolean z2 = false;
        if (!(allDialogs instanceof Collection) || !allDialogs.isEmpty()) {
            Iterator<T> it = allDialogs.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((TLRPC$Dialog) it.next()).f1506id == AppConfiguration$Reaction.getBotId()) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    z2 = true;
                    break;
                }
            }
        }
        return !z2;
    }

    public static final boolean checkBlacklistReaction(int i) {
        return MessagesController.getInstance(i).blockePeers.get(AppConfiguration$Reaction.getBotId(), -1) != -1;
    }

    public static final void checkReactionMessage(long j, String messagesReaction, String uuidReaction, BaseFragment parentFragment, MessageObject messageObject, CreateReactionButtonsActivity.ReactionDelegate delegate, Object... args) {
        Intrinsics.checkNotNullParameter(messagesReaction, "messagesReaction");
        Intrinsics.checkNotNullParameter(uuidReaction, "uuidReaction");
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(args, "args");
        Object firstOrNull = ArraysKt.firstOrNull(args);
        Intrinsics.checkNotNull(firstOrNull, "null cannot be cast to non-null type java.util.ArrayList<*>{ kotlin.collections.TypeAliasesKt.ArrayList<*> }");
        ArrayList arrayList = (ArrayList) firstOrNull;
        if (!arrayList.isEmpty()) {
            Object firstOrNull2 = CollectionsKt.firstOrNull(arrayList);
            String str = null;
            MessageObject messageObject2 = firstOrNull2 instanceof MessageObject ? (MessageObject) firstOrNull2 : null;
            if (messageObject2 != null) {
                CharSequence charSequence = messageObject2.caption;
                String obj = charSequence != null ? charSequence.toString() : null;
                if (obj == null) {
                    obj = "";
                }
                Matcher matcher = Pattern.compile("\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b").matcher(obj);
                if (matcher.find()) {
                    str = obj.substring(matcher.start(), matcher.end());
                    Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                if (Intrinsics.areEqual(str, uuidReaction)) {
                    parentFragment.presentFragment(new CreateReactionButtonsActivity(j, messagesReaction, uuidReaction, messageObject2, messageObject, delegate));
                }
            }
        }
    }

    private final void openReactionBot(BaseFragment baseFragment) {
        baseFragment.getMessagesController().openByUserName(AppConfiguration$Reaction.getBotName(), baseFragment, 99);
    }
}
