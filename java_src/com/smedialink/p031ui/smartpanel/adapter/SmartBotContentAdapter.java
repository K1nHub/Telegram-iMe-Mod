package com.smedialink.p031ui.smartpanel.adapter;

import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.p031ui.smartpanel.model.SmartBotTab;
import com.smedialink.p031ui.smartpanel.model.SmartPanelTabContent;
import com.smedialink.p031ui.smartpanel.model.content.TabBotAnswerItem;
import com.smedialink.p031ui.smartpanel.model.content.TabBotMediaAnswerItem;
import com.smedialink.p031ui.smartpanel.model.content.TabBotNameItem;
import com.smedialink.p031ui.smartpanel.view.SmartBotContentView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.databinding.ForkBotsContentPageItemAdsBinding;
import org.telegram.messenger.databinding.ForkBotsContentPageItemLabelBinding;
import org.telegram.messenger.databinding.ForkBotsContentPageItemNormalBinding;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.ContextLinkCell;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaAuto;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_botResults;
import org.telegram.tgnet.TLRPC$TL_messages_getInlineBotResults;
import org.telegram.tgnet.TLRPC$TL_photo;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: SmartBotContentAdapter.kt */
/* renamed from: com.smedialink.ui.smartpanel.adapter.SmartBotContentAdapter */
/* loaded from: classes3.dex */
public final class SmartBotContentAdapter extends RecyclerListView.SelectionAdapter {
    private boolean contextMedia;
    private int contextQueryReqId;
    private Runnable contextQueryRunnable;
    private int contextUsernameReqId;
    private int currentAccount;
    private SmartBotContentView.BotResponseType currentBotResponseType;
    private final long dialogId;
    private TLRPC$User foundContextBot;
    private final List<SmartPanelTabContent> items;
    private int mediaContentOffset;
    private String nextQueryOffset;
    private final OnLoadGifListener onLoadGifListener;
    private String searchingContextQuery;

    /* compiled from: SmartBotContentAdapter.kt */
    /* renamed from: com.smedialink.ui.smartpanel.adapter.SmartBotContentAdapter$OnLoadGifListener */
    /* loaded from: classes3.dex */
    public interface OnLoadGifListener {
        void onLoadGifComplete(int i);
    }

    /* compiled from: SmartBotContentAdapter.kt */
    /* renamed from: com.smedialink.ui.smartpanel.adapter.SmartBotContentAdapter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SmartPanelTabContent.Type.values().length];
            iArr[SmartPanelTabContent.Type.ADVERT_BOT_ANSWER.ordinal()] = 1;
            iArr[SmartPanelTabContent.Type.NORMAL_BOT_ANSWER.ordinal()] = 2;
            iArr[SmartPanelTabContent.Type.NORMAL_BOT_LABEL.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public SmartBotContentAdapter(long j, OnLoadGifListener onLoadGifListener) {
        Intrinsics.checkNotNullParameter(onLoadGifListener, "onLoadGifListener");
        this.dialogId = j;
        this.onLoadGifListener = onLoadGifListener;
        this.items = new ArrayList();
        this.currentAccount = UserConfig.selectedAccount;
        this.currentBotResponseType = SmartBotContentView.BotResponseType.TEXT;
    }

    public final int getMediaContentOffset() {
        return this.mediaContentOffset;
    }

    public final void setTextData(SmartBotTab content, SmartBotContentView.BotResponseType botResponseType) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(botResponseType, "botResponseType");
        this.currentBotResponseType = botResponseType;
        this.items.clear();
        ArrayList arrayList = new ArrayList();
        List<SmartPanelTabContent> answers = content.getAnswers();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = answers.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            SmartPanelTabContent smartPanelTabContent = (SmartPanelTabContent) next;
            if ((smartPanelTabContent.getContentType() != SmartPanelTabContent.Type.NORMAL_BOT_ANSWER || botResponseType != SmartBotContentView.BotResponseType.TEXT) && ((smartPanelTabContent.getContentType() != SmartPanelTabContent.Type.BOT_MEDIA_ANSWER || botResponseType != SmartBotContentView.BotResponseType.GIF) && smartPanelTabContent.getContentType() != SmartPanelTabContent.Type.NORMAL_BOT_LABEL && smartPanelTabContent.getContentType() != SmartPanelTabContent.Type.ADVERT_BOT_ANSWER)) {
                r4 = false;
            }
            if (r4) {
                arrayList2.add(next);
            }
        }
        arrayList.addAll(arrayList2);
        this.items.addAll(arrayList);
        this.mediaContentOffset = this.items.size();
        notifyDataSetChanged();
        if ((content.getGif().length() > 0) && botResponseType == SmartBotContentView.BotResponseType.GIF) {
            prepareGifRequest(content.getGif());
            return;
        }
        if (content.getGif().length() == 0) {
            this.onLoadGifListener.onLoadGifComplete(0);
        }
    }

    public final SmartPanelTabContent getItem(int i) {
        return this.items.get(i);
    }

    public final long getGifBotId() {
        TLRPC$User tLRPC$User = this.foundContextBot;
        if (tLRPC$User == null) {
            return 0L;
        }
        return tLRPC$User.f1633id;
    }

    public final String getGifBotName() {
        String str;
        TLRPC$User tLRPC$User = this.foundContextBot;
        return (tLRPC$User == null || (str = tLRPC$User.username) == null) ? "" : str;
    }

    public final List<SmartPanelTabContent> getTextContent() {
        return this.items.subList(0, this.mediaContentOffset);
    }

    public final List<TLRPC$BotInlineResult> getMediaContent() {
        int lastIndex;
        int collectionSizeOrDefault;
        List<SmartPanelTabContent> list = this.items;
        int i = this.mediaContentOffset;
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        List<SmartPanelTabContent> subList = list.subList(i, lastIndex);
        ArrayList<TabBotMediaAnswerItem> arrayList = new ArrayList();
        for (Object obj : subList) {
            if (obj instanceof TabBotMediaAnswerItem) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (TabBotMediaAnswerItem tabBotMediaAnswerItem : arrayList) {
            arrayList2.add(tabBotMediaAnswerItem.getMedia());
        }
        return arrayList2;
    }

    public final void searchGIFsForNextOffset() {
        String str;
        TLRPC$User tLRPC$User;
        String str2;
        if (this.contextQueryReqId != 0 || (str = this.nextQueryOffset) == null) {
            return;
        }
        boolean z = false;
        if (str != null) {
            if (str.length() == 0) {
                z = true;
            }
        }
        if (z || (tLRPC$User = this.foundContextBot) == null || (str2 = this.searchingContextQuery) == null) {
            return;
        }
        searchForGifResults(true, tLRPC$User, str2, this.nextQueryOffset);
    }

    public final void onDestroy() {
        Runnable runnable = this.contextQueryRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.contextQueryRunnable = null;
        }
        if (this.contextUsernameReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextUsernameReqId, true);
            this.contextUsernameReqId = 0;
        }
        if (this.contextQueryReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqId, true);
            this.contextQueryReqId = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i == SmartPanelTabContent.Type.ADVERT_BOT_ANSWER.getValue()) {
            ForkBotsContentPageItemAdsBinding inflate = ForkBotsContentPageItemAdsBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.f….context), parent, false)");
            return new AdsViewHolder(this, inflate);
        } else if (i == SmartPanelTabContent.Type.BOT_MEDIA_ANSWER.getValue()) {
            return new RecyclerListView.Holder(new ContextLinkCell(parent.getContext()));
        } else {
            if (i == SmartPanelTabContent.Type.NORMAL_BOT_ANSWER.getValue()) {
                ForkBotsContentPageItemNormalBinding inflate2 = ForkBotsContentPageItemNormalBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate2, "inflate(LayoutInflater.f….context), parent, false)");
                return new NormalViewHolder(this, inflate2);
            }
            ForkBotsContentPageItemLabelBinding inflate3 = ForkBotsContentPageItemLabelBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate3, "inflate(LayoutInflater.f….context), parent, false)");
            return new BotNameViewHolder(this, inflate3);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.items.get(i).getContentType().ordinal()];
        if (i2 == 1) {
            ((AdsViewHolder) holder).bindTo(this.items.get(i));
        } else if (i2 == 2) {
            ((NormalViewHolder) holder).bindTo(this.items.get(i));
        } else if (i2 == 3) {
            ((BotNameViewHolder) holder).bindTo(this.items.get(i));
        } else {
            SmartPanelTabContent smartPanelTabContent = this.items.get(i);
            if (smartPanelTabContent instanceof TabBotMediaAnswerItem) {
                ((ContextLinkCell) holder.itemView).setLink(((TabBotMediaAnswerItem) smartPanelTabContent).getMedia(), this.foundContextBot, this.contextMedia, true, true);
            }
        }
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        boolean z = false;
        if (viewHolder != null && viewHolder.getItemViewType() == SmartPanelTabContent.Type.NORMAL_BOT_LABEL.getValue()) {
            z = true;
        }
        return !z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.items.get(i).getContentType().getValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    private final void prepareGifRequest(String str) {
        Runnable runnable = this.contextQueryRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.contextQueryRunnable = null;
        }
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        this.searchingContextQuery = str;
        SmartBotContentAdapter$prepareGifRequest$1 smartBotContentAdapter$prepareGifRequest$1 = new SmartBotContentAdapter$prepareGifRequest$1(this, str, messagesController, messagesStorage);
        this.contextQueryRunnable = smartBotContentAdapter$prepareGifRequest$1;
        AndroidUtilities.runOnUIThread(smartBotContentAdapter$prepareGifRequest$1, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processFoundUser(TLRPC$User tLRPC$User) {
        this.contextUsernameReqId = 0;
        tLRPC$User = (tLRPC$User == null || !tLRPC$User.bot || tLRPC$User.bot_inline_placeholder == null) ? null : null;
        this.foundContextBot = tLRPC$User;
        searchForGifResults(true, tLRPC$User, this.searchingContextQuery, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void searchForGifResults(final boolean z, final TLRPC$User tLRPC$User, final String str, final String str2) {
        if (this.currentBotResponseType != SmartBotContentView.BotResponseType.GIF) {
            return;
        }
        if (this.contextQueryReqId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.contextQueryReqId, true);
            this.contextQueryReqId = 0;
        }
        if (str == null || tLRPC$User == null) {
            this.searchingContextQuery = null;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((Object) str);
        sb.append('_');
        sb.append((Object) str2);
        sb.append('_');
        sb.append(tLRPC$User.f1633id);
        final String sb2 = sb.toString();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        RequestDelegate requestDelegate = new RequestDelegate() { // from class: com.smedialink.ui.smartpanel.adapter.SmartBotContentAdapter$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SmartBotContentAdapter.m1535searchForGifResults$lambda3(SmartBotContentAdapter.this, str, z, tLRPC$User, str2, messagesStorage, sb2, tLObject, tLRPC$TL_error);
            }
        };
        if (z) {
            messagesStorage.getBotCache(sb2, requestDelegate);
            return;
        }
        TLRPC$TL_messages_getInlineBotResults tLRPC$TL_messages_getInlineBotResults = new TLRPC$TL_messages_getInlineBotResults();
        tLRPC$TL_messages_getInlineBotResults.bot = MessagesController.getInstance(this.currentAccount).getInputUser(tLRPC$User);
        tLRPC$TL_messages_getInlineBotResults.query = str;
        tLRPC$TL_messages_getInlineBotResults.offset = str2;
        if (DialogObject.isEncryptedDialog(this.dialogId)) {
            tLRPC$TL_messages_getInlineBotResults.peer = new TLRPC$TL_inputPeerEmpty();
        } else {
            tLRPC$TL_messages_getInlineBotResults.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
        }
        this.contextQueryReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getInlineBotResults, requestDelegate, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchForGifResults$lambda-3  reason: not valid java name */
    public static final void m1535searchForGifResults$lambda3(final SmartBotContentAdapter this$0, final String str, final boolean z, final TLRPC$User tLRPC$User, final String str2, final MessagesStorage messagesStorage, final String key, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(key, "$key");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.smedialink.ui.smartpanel.adapter.SmartBotContentAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SmartBotContentAdapter.m1536searchForGifResults$lambda3$lambda2(SmartBotContentAdapter.this, str, z, tLObject, tLRPC$User, str2, messagesStorage, key);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchForGifResults$lambda-3$lambda-2  reason: not valid java name */
    public static final void m1536searchForGifResults$lambda3$lambda2(SmartBotContentAdapter this$0, String str, boolean z, TLObject tLObject, TLRPC$User tLRPC$User, String str2, MessagesStorage messagesStorage, String key) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(key, "$key");
        String str3 = this$0.searchingContextQuery;
        if (str3 == null || !Intrinsics.areEqual(str, str3)) {
            return;
        }
        int i = 0;
        this$0.contextQueryReqId = 0;
        if (z && tLObject == null) {
            this$0.searchForGifResults(false, tLRPC$User, str, str2);
        }
        if (tLObject instanceof TLRPC$TL_messages_botResults) {
            if (!z && ((TLRPC$TL_messages_botResults) tLObject).cache_time != 0) {
                messagesStorage.saveBotCache(key, tLObject);
            }
            TLRPC$TL_messages_botResults tLRPC$TL_messages_botResults = (TLRPC$TL_messages_botResults) tLObject;
            this$0.nextQueryOffset = tLRPC$TL_messages_botResults.next_offset;
            while (i < tLRPC$TL_messages_botResults.results.size()) {
                TLRPC$BotInlineResult tLRPC$BotInlineResult = tLRPC$TL_messages_botResults.results.get(i);
                if (!(tLRPC$BotInlineResult.document instanceof TLRPC$TL_document) && !(tLRPC$BotInlineResult.photo instanceof TLRPC$TL_photo) && tLRPC$BotInlineResult.content == null && (tLRPC$BotInlineResult.send_message instanceof TLRPC$TL_botInlineMessageMediaAuto)) {
                    tLRPC$TL_messages_botResults.results.remove(i);
                    i--;
                }
                tLRPC$BotInlineResult.query_id = tLRPC$TL_messages_botResults.query_id;
                i++;
            }
            int size = this$0.items.size();
            List<SmartPanelTabContent> list = this$0.items;
            TabBotMediaAnswerItem.Companion companion = TabBotMediaAnswerItem.Companion;
            ArrayList<TLRPC$BotInlineResult> arrayList = tLRPC$TL_messages_botResults.results;
            Intrinsics.checkNotNullExpressionValue(arrayList, "response.results");
            list.addAll(size, companion.map(arrayList));
            if (size == 1) {
                this$0.onLoadGifListener.onLoadGifComplete(tLRPC$TL_messages_botResults.results.size());
            }
            if (size != this$0.items.size()) {
                this$0.notifyItemRangeInserted(size, this$0.items.size());
            }
            this$0.contextMedia = tLRPC$TL_messages_botResults.gallery;
            if (tLRPC$TL_messages_botResults.results.isEmpty()) {
                this$0.nextQueryOffset = "";
            }
        }
    }

    /* compiled from: SmartBotContentAdapter.kt */
    /* renamed from: com.smedialink.ui.smartpanel.adapter.SmartBotContentAdapter$AdsViewHolder */
    /* loaded from: classes3.dex */
    public final class AdsViewHolder extends RecyclerView.ViewHolder {
        private final ForkBotsContentPageItemAdsBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdsViewHolder(SmartBotContentAdapter this$0, ForkBotsContentPageItemAdsBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        public final void bindTo(SmartPanelTabContent content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.binding.adsPhrase.setText(((TabBotAnswerItem) content).getPhrase());
        }
    }

    /* compiled from: SmartBotContentAdapter.kt */
    /* renamed from: com.smedialink.ui.smartpanel.adapter.SmartBotContentAdapter$NormalViewHolder */
    /* loaded from: classes3.dex */
    public final class NormalViewHolder extends RecyclerView.ViewHolder {
        private final ForkBotsContentPageItemNormalBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NormalViewHolder(SmartBotContentAdapter this$0, ForkBotsContentPageItemNormalBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        public final void bindTo(SmartPanelTabContent content) {
            Intrinsics.checkNotNullParameter(content, "content");
            ForkBotsContentPageItemNormalBinding forkBotsContentPageItemNormalBinding = this.binding;
            LinearLayout linearLayout = forkBotsContentPageItemNormalBinding.normalPhraseLayout;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(Theme.getColor("chats_actionBackground"));
            gradientDrawable.setCornerRadius(AndroidUtilities.m51dp(6.0f));
            Unit unit = Unit.INSTANCE;
            linearLayout.setBackground(gradientDrawable);
            forkBotsContentPageItemNormalBinding.normalPhrase.setText(((TabBotAnswerItem) content).getPhrase());
            forkBotsContentPageItemNormalBinding.normalPhrase.setTextColor(-1);
            forkBotsContentPageItemNormalBinding.normalPhrase.setPaddingRelative(AndroidUtilities.m51dp(4.0f), AndroidUtilities.m51dp(1.0f), AndroidUtilities.m51dp(4.0f), AndroidUtilities.m51dp(2.0f));
        }
    }

    /* compiled from: SmartBotContentAdapter.kt */
    /* renamed from: com.smedialink.ui.smartpanel.adapter.SmartBotContentAdapter$BotNameViewHolder */
    /* loaded from: classes3.dex */
    public final class BotNameViewHolder extends RecyclerView.ViewHolder {
        private final ForkBotsContentPageItemLabelBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BotNameViewHolder(SmartBotContentAdapter this$0, ForkBotsContentPageItemLabelBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        public final void bindTo(SmartPanelTabContent content) {
            Intrinsics.checkNotNullParameter(content, "content");
            ForkBotsContentPageItemLabelBinding forkBotsContentPageItemLabelBinding = this.binding;
            forkBotsContentPageItemLabelBinding.botName.setText(((TabBotNameItem) content).getBotName());
            forkBotsContentPageItemLabelBinding.botName.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        }
    }
}
