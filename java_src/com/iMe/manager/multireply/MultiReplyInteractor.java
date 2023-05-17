package com.iMe.manager.multireply;

import android.text.SpannableString;
import android.text.TextUtils;
import android.util.SparseArray;
import com.iMe.manager.multireply.data.MultiReplyRepository;
import com.iMe.manager.multireply.message.MessageLinkPattern;
import com.iMe.manager.multireply.message.MessageLinkPatternKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.utils.extentions.model.telegram.UserExtKt;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p044ui.Components.URLSpanReplacement;
import org.telegram.p044ui.Components.URLSpanUserMention;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: MultiReplyInteractor.kt */
/* loaded from: classes3.dex */
public final class MultiReplyInteractor {
    private final MultiReplyRepository multiReplyRepo;

    public MultiReplyInteractor(MultiReplyRepository multiReplyRepo) {
        Intrinsics.checkNotNullParameter(multiReplyRepo, "multiReplyRepo");
        this.multiReplyRepo = multiReplyRepo;
    }

    public final Single<Result<CharSequence>> buildMultiReplyMessage(List<? extends MessageObject> selectedMessages, TLRPC$Chat currentChat) {
        Intrinsics.checkNotNullParameter(selectedMessages, "selectedMessages");
        Intrinsics.checkNotNullParameter(currentChat, "currentChat");
        if (selectedMessages.isEmpty()) {
            Single<Result<CharSequence>> just = Single.just(Result.Companion.success(""));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        Single<MessageLinkPattern> requestPattern = this.multiReplyRepo.requestPattern(selectedMessages.get(0), currentChat);
        final MultiReplyInteractor$buildMultiReplyMessage$1 multiReplyInteractor$buildMultiReplyMessage$1 = new MultiReplyInteractor$buildMultiReplyMessage$1(selectedMessages, this);
        Single map = requestPattern.map(new Function() { // from class: com.iMe.manager.multireply.MultiReplyInteractor$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result buildMultiReplyMessage$lambda$0;
                buildMultiReplyMessage$lambda$0 = MultiReplyInteractor.buildMultiReplyMessage$lambda$0(Function1.this, obj);
                return buildMultiReplyMessage$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "fun buildMultiReplyMessa…        }\n        }\n    }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result buildMultiReplyMessage$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    public final List<MessageObject> prepareSelectedMessages(SparseArray<MessageObject>[] selectedMessagesId) {
        Intrinsics.checkNotNullParameter(selectedMessagesId, "selectedMessagesId");
        ArrayList arrayList = new ArrayList();
        for (SparseArray<MessageObject> sparseArray : selectedMessagesId) {
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                sparseArray.keyAt(i);
                arrayList.add(sparseArray.valueAt(i));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CharSequence buildMultiReplyMessageForMessageObject(MessageObject messageObject, MessageLinkPattern messageLinkPattern) {
        SpannableString buildSpannableStringChat;
        SpannableString buildSpannableStringUser;
        CharSequence buildMessageLink = buildMessageLink(messageObject, messageLinkPattern);
        CharSequence charSequence = "";
        if (messageObject.isFromUser()) {
            TLRPC$User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(messageObject.messageOwner.from_id.user_id));
            CharSequence[] charSequenceArr = new CharSequence[2];
            if (user != null && (buildSpannableStringUser = buildSpannableStringUser(user)) != null) {
                charSequence = buildSpannableStringUser;
            }
            charSequenceArr[0] = charSequence;
            charSequenceArr[1] = buildMessageLink;
            CharSequence concat = TextUtils.concat(charSequenceArr);
            Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …messageLink\n            )");
            return concat;
        }
        TLRPC$Chat chat = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(messageObject.messageOwner.from_id.channel_id));
        CharSequence[] charSequenceArr2 = new CharSequence[2];
        if (chat != null && (buildSpannableStringChat = buildSpannableStringChat(chat)) != null) {
            charSequence = buildSpannableStringChat;
        }
        charSequenceArr2[0] = charSequence;
        charSequenceArr2[1] = buildMessageLink;
        CharSequence concat2 = TextUtils.concat(charSequenceArr2);
        Intrinsics.checkNotNullExpressionValue(concat2, "concat(\n                …    messageLink\n        )");
        return concat2;
    }

    private final SpannableString buildSpannableStringUser(TLRPC$User tLRPC$User) {
        SpannableString spannableString = new SpannableString(UserExtKt.getPrivacySafeName(tLRPC$User) + ':');
        addUserNameSpan(spannableString, String.valueOf(tLRPC$User.f1574id));
        return spannableString;
    }

    private final SpannableString buildSpannableStringChat(TLRPC$Chat tLRPC$Chat) {
        return new SpannableString(tLRPC$Chat.title + ':');
    }

    private final CharSequence buildMessageLink(MessageObject messageObject, MessageLinkPattern messageLinkPattern) {
        StringBuilder sb = new StringBuilder();
        sb.append(' ');
        sb.append(messageObject.getId());
        SpannableString spannableString = new SpannableString(sb.toString());
        if (spannableString.length() > 1) {
            addUrlSpan$default(this, spannableString, MessageLinkPatternKt.buildMessageLink(messageLinkPattern, messageObject.getId()), 0, 0, 6, null);
        }
        return spannableString;
    }

    static /* synthetic */ void addUrlSpan$default(MultiReplyInteractor multiReplyInteractor, SpannableString spannableString, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 1;
        }
        if ((i3 & 4) != 0) {
            i2 = spannableString.length();
        }
        multiReplyInteractor.addUrlSpan(spannableString, str, i, i2);
    }

    private final void addUrlSpan(SpannableString spannableString, String str, int i, int i2) {
        try {
            spannableString.setSpan(new URLSpanReplacement(str), i, i2, 33);
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    private final void addUserNameSpan(SpannableString spannableString, String str) {
        try {
            spannableString.setSpan(new URLSpanUserMention(str, 1), 0, spannableString.length(), 33);
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }
}
