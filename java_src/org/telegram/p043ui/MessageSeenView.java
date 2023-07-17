package org.telegram.p043ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.AvatarsImageView;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.HideViewAfterAnimation;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MessageSeenCheckDrawable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsRecent;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipants;
import org.telegram.tgnet.TLRPC$TL_channels_getParticipants;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_chatFull;
import org.telegram.tgnet.TLRPC$TL_messages_getFullChat;
import org.telegram.tgnet.TLRPC$TL_messages_getMessageReadParticipants;
import org.telegram.tgnet.TLRPC$TL_readParticipantDate;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$Vector;
/* renamed from: org.telegram.ui.MessageSeenView */
/* loaded from: classes5.dex */
public class MessageSeenView extends FrameLayout {
    AvatarsImageView avatarsImageView;
    int currentAccount;
    ArrayList<Integer> dates;
    FlickerLoadingView flickerLoadingView;
    ImageView iconView;
    boolean ignoreLayout;
    boolean isVoice;
    private RecyclerListView listView;
    ArrayList<Long> peerIds;
    SimpleTextView titleView;
    public ArrayList<TLRPC$User> users;

    public MessageSeenView(Context context, final int i, MessageObject messageObject, final TLRPC$Chat tLRPC$Chat) {
        super(context);
        this.peerIds = new ArrayList<>();
        this.dates = new ArrayList<>();
        this.users = new ArrayList<>();
        this.currentAccount = i;
        this.isVoice = messageObject.isRoundVideo() || messageObject.isVoice();
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.flickerLoadingView = flickerLoadingView;
        flickerLoadingView.setColors(Theme.key_actionBarDefaultSubmenuBackground, Theme.key_listSelector, -1);
        this.flickerLoadingView.setViewType(13);
        this.flickerLoadingView.setIsSingleCell(false);
        addView(this.flickerLoadingView, LayoutHelper.createFrame(-2, -1));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.titleView = simpleTextView;
        simpleTextView.setTextSize(16);
        this.titleView.setEllipsizeByGradient(true);
        this.titleView.setRightPadding(AndroidUtilities.m54dp(62));
        addView(this.titleView, LayoutHelper.createFrame(0, -2, 19, 40, 0, 0, 0));
        AvatarsImageView avatarsImageView = new AvatarsImageView(context, false);
        this.avatarsImageView = avatarsImageView;
        avatarsImageView.setStyle(11);
        this.avatarsImageView.setAvatarsTextSize(AndroidUtilities.m54dp(22));
        addView(this.avatarsImageView, LayoutHelper.createFrame(56, -1, 21, 0, 0, 0, 0));
        this.titleView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        TLRPC$TL_messages_getMessageReadParticipants tLRPC$TL_messages_getMessageReadParticipants = new TLRPC$TL_messages_getMessageReadParticipants();
        tLRPC$TL_messages_getMessageReadParticipants.msg_id = messageObject.getId();
        tLRPC$TL_messages_getMessageReadParticipants.peer = MessagesController.getInstance(i).getInputPeer(messageObject.getDialogId());
        ImageView imageView = new ImageView(context);
        this.iconView = imageView;
        addView(imageView, LayoutHelper.createFrame(24, 24, 19, 11, 0, 0, 0));
        Drawable mutate = ContextCompat.getDrawable(context, this.isVoice ? C3417R.C3419drawable.msg_played : C3417R.C3419drawable.msg_seen).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon), PorterDuff.Mode.MULTIPLY));
        this.iconView.setImageDrawable(mutate);
        this.avatarsImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.titleView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        TLRPC$Peer tLRPC$Peer = messageObject.messageOwner.from_id;
        final long j = tLRPC$Peer != null ? tLRPC$Peer.user_id : 0L;
        ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_messages_getMessageReadParticipants, new RequestDelegate() { // from class: org.telegram.ui.MessageSeenView$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MessageSeenView.this.lambda$new$5(j, i, tLRPC$Chat, tLObject, tLRPC$TL_error);
            }
        });
        setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector), 6, 0));
        setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(final long j, final int i, final TLRPC$Chat tLRPC$Chat, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MessageSeenView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MessageSeenView.this.lambda$new$4(tLRPC$TL_error, tLObject, j, i, tLRPC$Chat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, long j, final int i, TLRPC$Chat tLRPC$Chat) {
        if (tLRPC$TL_error == null) {
            TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
            ArrayList arrayList = new ArrayList();
            final HashMap hashMap = new HashMap();
            final ArrayList arrayList2 = new ArrayList();
            int size = tLRPC$Vector.objects.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = tLRPC$Vector.objects.get(i2);
                if (obj instanceof TLRPC$TL_readParticipantDate) {
                    TLRPC$TL_readParticipantDate tLRPC$TL_readParticipantDate = (TLRPC$TL_readParticipantDate) obj;
                    int i3 = tLRPC$TL_readParticipantDate.date;
                    Long valueOf = Long.valueOf(tLRPC$TL_readParticipantDate.user_id);
                    if (j != valueOf.longValue()) {
                        MessagesController.getInstance(i).getUser(valueOf);
                        arrayList2.add(new Pair(valueOf, Integer.valueOf(i3)));
                        arrayList.add(valueOf);
                    }
                } else if (obj instanceof Long) {
                    Long l = (Long) obj;
                    if (j != l.longValue()) {
                        MessagesController.getInstance(i).getUser(l);
                        arrayList2.add(new Pair(l, 0));
                        arrayList.add(l);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                    Pair pair = (Pair) arrayList2.get(i4);
                    this.peerIds.add((Long) pair.first);
                    this.dates.add((Integer) pair.second);
                    this.users.add((TLRPC$User) hashMap.get(pair.first));
                }
                updateView();
                return;
            } else if (ChatObject.isChannel(tLRPC$Chat)) {
                TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants = new TLRPC$TL_channels_getParticipants();
                tLRPC$TL_channels_getParticipants.limit = MessagesController.getInstance(i).chatReadMarkSizeThreshold;
                tLRPC$TL_channels_getParticipants.offset = 0;
                tLRPC$TL_channels_getParticipants.filter = new TLRPC$TL_channelParticipantsRecent();
                tLRPC$TL_channels_getParticipants.channel = MessagesController.getInstance(i).getInputChannel(tLRPC$Chat.f1515id);
                ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.MessageSeenView$$ExternalSyntheticLambda4
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                        MessageSeenView.this.lambda$new$1(i, hashMap, arrayList2, tLObject2, tLRPC$TL_error2);
                    }
                });
                return;
            } else {
                TLRPC$TL_messages_getFullChat tLRPC$TL_messages_getFullChat = new TLRPC$TL_messages_getFullChat();
                tLRPC$TL_messages_getFullChat.chat_id = tLRPC$Chat.f1515id;
                ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_messages_getFullChat, new RequestDelegate() { // from class: org.telegram.ui.MessageSeenView$$ExternalSyntheticLambda3
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                        MessageSeenView.this.lambda$new$3(i, hashMap, arrayList2, tLObject2, tLRPC$TL_error2);
                    }
                });
                return;
            }
        }
        updateView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final int i, final HashMap hashMap, final ArrayList arrayList, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MessageSeenView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MessageSeenView.this.lambda$new$0(tLObject, i, hashMap, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(TLObject tLObject, int i, HashMap hashMap, ArrayList arrayList) {
        if (tLObject != null) {
            TLRPC$TL_channels_channelParticipants tLRPC$TL_channels_channelParticipants = (TLRPC$TL_channels_channelParticipants) tLObject;
            for (int i2 = 0; i2 < tLRPC$TL_channels_channelParticipants.users.size(); i2++) {
                TLRPC$User tLRPC$User = tLRPC$TL_channels_channelParticipants.users.get(i2);
                MessagesController.getInstance(i).putUser(tLRPC$User, false);
                hashMap.put(Long.valueOf(tLRPC$User.f1656id), tLRPC$User);
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Pair pair = (Pair) arrayList.get(i3);
                this.peerIds.add((Long) pair.first);
                this.dates.add((Integer) pair.second);
                this.users.add((TLRPC$User) hashMap.get(pair.first));
            }
        }
        updateView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(final int i, final HashMap hashMap, final ArrayList arrayList, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MessageSeenView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MessageSeenView.this.lambda$new$2(tLObject, i, hashMap, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(TLObject tLObject, int i, HashMap hashMap, ArrayList arrayList) {
        if (tLObject != null) {
            TLRPC$TL_messages_chatFull tLRPC$TL_messages_chatFull = (TLRPC$TL_messages_chatFull) tLObject;
            for (int i2 = 0; i2 < tLRPC$TL_messages_chatFull.users.size(); i2++) {
                TLRPC$User tLRPC$User = tLRPC$TL_messages_chatFull.users.get(i2);
                MessagesController.getInstance(i).putUser(tLRPC$User, false);
                hashMap.put(Long.valueOf(tLRPC$User.f1656id), tLRPC$User);
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Pair pair = (Pair) arrayList.get(i3);
                this.peerIds.add((Long) pair.first);
                this.dates.add((Integer) pair.second);
                this.users.add((TLRPC$User) hashMap.get(pair.first));
            }
        }
        updateView();
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        View view = (View) getParent();
        if (view != null && view.getWidth() > 0) {
            i = View.MeasureSpec.makeMeasureSpec(view.getWidth(), 1073741824);
        }
        this.ignoreLayout = true;
        boolean z = this.flickerLoadingView.getVisibility() == 0;
        this.titleView.setVisibility(8);
        if (z) {
            this.flickerLoadingView.setVisibility(8);
        }
        super.onMeasure(i, i2);
        if (z) {
            this.flickerLoadingView.getLayoutParams().width = getMeasuredWidth();
            this.flickerLoadingView.setVisibility(0);
        }
        this.titleView.setVisibility(0);
        this.titleView.getLayoutParams().width = getMeasuredWidth() - AndroidUtilities.m54dp(40);
        this.ignoreLayout = false;
        super.onMeasure(i, i2);
    }

    private void updateView() {
        setEnabled(this.users.size() > 0);
        for (int i = 0; i < 3; i++) {
            if (i < this.users.size()) {
                this.avatarsImageView.setObject(i, this.currentAccount, this.users.get(i));
            } else {
                this.avatarsImageView.setObject(i, this.currentAccount, null);
            }
        }
        if (this.users.size() == 1) {
            this.avatarsImageView.setTranslationX(AndroidUtilities.m54dp(24));
        } else if (this.users.size() == 2) {
            this.avatarsImageView.setTranslationX(AndroidUtilities.m54dp(12));
        } else {
            this.avatarsImageView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        this.titleView.setRightPadding(AndroidUtilities.m54dp((Math.min(2, this.users.size() - 1) * 12) + 32 + 6));
        this.avatarsImageView.commitTransition(false);
        if (this.peerIds.size() == 1 && this.users.get(0) != null) {
            this.titleView.setText(ContactsController.formatName(this.users.get(0).first_name, this.users.get(0).last_name));
        } else if (this.peerIds.size() == 0) {
            this.titleView.setText(LocaleController.getString("NobodyViewed", C3417R.string.NobodyViewed));
        } else {
            this.titleView.setText(LocaleController.formatPluralString(this.isVoice ? "MessagePlayed" : "MessageSeen", this.peerIds.size(), new Object[0]));
        }
        this.titleView.animate().alpha(1.0f).setDuration(220L).start();
        this.avatarsImageView.animate().alpha(1.0f).setDuration(220L).start();
        this.flickerLoadingView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(220L).setListener(new HideViewAfterAnimation(this.flickerLoadingView)).start();
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.getAdapter();
        }
    }

    public RecyclerListView createListView() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            return recyclerListView;
        }
        RecyclerListView recyclerListView2 = new RecyclerListView(this, getContext()) { // from class: org.telegram.ui.MessageSeenView.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i2);
                int m54dp = AndroidUtilities.m54dp(4) + (AndroidUtilities.m54dp(50) * getAdapter().getItemCount());
                if (m54dp <= size) {
                    size = m54dp;
                }
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size, 1073741824));
            }
        };
        this.listView = recyclerListView2;
        recyclerListView2.setLayoutManager(new LinearLayoutManager(getContext()));
        this.listView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.MessageSeenView.2
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                if (recyclerView.getChildAdapterPosition(view) == MessageSeenView.this.users.size() - 1) {
                    rect.bottom = AndroidUtilities.m54dp(4);
                }
            }
        });
        this.listView.setAdapter(new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.MessageSeenView.3
            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                UserCell userCell = new UserCell(viewGroup.getContext());
                userCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m54dp(50)));
                return new RecyclerListView.Holder(userCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                ((UserCell) viewHolder.itemView).setUser(MessageSeenView.this.users.get(i), MessageSeenView.this.dates.get(i).intValue());
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return MessageSeenView.this.users.size();
            }
        });
        return this.listView;
    }

    /* renamed from: org.telegram.ui.MessageSeenView$UserCell */
    /* loaded from: classes5.dex */
    private static class UserCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
        private static MessageSeenCheckDrawable seenDrawable = new MessageSeenCheckDrawable(C3417R.C3419drawable.msg_mini_checks, Theme.key_windowBackgroundWhiteGrayText);
        AvatarDrawable avatarDrawable;
        BackupImageView avatarImageView;
        private int currentAccount;
        SimpleTextView nameView;
        TextView readView;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable rightDrawable;
        TLRPC$User user;

        public UserCell(Context context) {
            super(context);
            this.currentAccount = UserConfig.selectedAccount;
            this.avatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarImageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m54dp(18));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.nameView = simpleTextView;
            simpleTextView.setTextSize(16);
            this.nameView.setEllipsizeByGradient(!LocaleController.isRTL);
            this.nameView.setImportantForAccessibility(2);
            this.nameView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
            this.nameView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.rightDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m54dp(18));
            this.nameView.setDrawablePadding(AndroidUtilities.m54dp(3));
            TextView textView = new TextView(context);
            this.readView = textView;
            textView.setTextSize(1, 13.0f);
            this.readView.setLines(1);
            this.readView.setEllipsize(TextUtils.TruncateAt.END);
            this.readView.setImportantForAccessibility(2);
            this.readView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
            this.readView.setGravity(LocaleController.isRTL ? 5 : 3);
            if (LocaleController.isRTL) {
                addView(this.avatarImageView, LayoutHelper.createFrame(34, 34, 21, 0, 0, 10, 0));
                addView(this.nameView, LayoutHelper.createFrame(-2, -2.0f, 53, 8.0f, 6.33f, 55.0f, (float) BitmapDescriptorFactory.HUE_RED));
                addView(this.readView, LayoutHelper.createFrame(-2, -2, 53, 13, 20, 55, 0));
                return;
            }
            addView(this.avatarImageView, LayoutHelper.createFrame(34, 34.0f, 19, 10.0f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
            addView(this.nameView, LayoutHelper.createFrame(-2, -2.0f, 51, 55.0f, 6.33f, 8.0f, (float) BitmapDescriptorFactory.HUE_RED));
            addView(this.readView, LayoutHelper.createFrame(-2, -2, 51, 55, 20, 13, 0));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(50), 1073741824));
        }

        public void setUser(TLRPC$User tLRPC$User, int i) {
            this.user = tLRPC$User;
            updateStatus(false);
            if (tLRPC$User != null) {
                this.avatarDrawable.setInfo(tLRPC$User);
                this.avatarImageView.setImage(ImageLocation.getForUser(tLRPC$User, 1), "50_50", this.avatarDrawable, tLRPC$User);
                this.nameView.setText(ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
            }
            if (i <= 0) {
                this.readView.setVisibility(8);
                this.nameView.setTranslationY(AndroidUtilities.m54dp(9));
                return;
            }
            this.readView.setText(TextUtils.concat(seenDrawable.getSpanned(getContext()), LocaleController.formatSeenDate(i)));
            this.readView.setVisibility(0);
            this.nameView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            String formatString = LocaleController.formatString("AccDescrPersonHasSeen", C3417R.string.AccDescrPersonHasSeen, this.nameView.getText());
            if (this.readView.getVisibility() == 0) {
                formatString = formatString + " " + ((Object) this.readView.getText());
            }
            accessibilityNodeInfo.setText(formatString);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.userEmojiStatusUpdated) {
                TLRPC$User tLRPC$User = (TLRPC$User) objArr[0];
                TLRPC$User tLRPC$User2 = this.user;
                if (tLRPC$User2 == null || tLRPC$User == null || tLRPC$User2.f1656id != tLRPC$User.f1656id) {
                    return;
                }
                this.user = tLRPC$User;
                updateStatus(true);
            }
        }

        private void updateStatus(boolean z) {
            Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(this.user);
            if (emojiStatusDocumentId == null) {
                this.nameView.setRightDrawable((Drawable) null);
                this.rightDrawable.set((Drawable) null, z);
                return;
            }
            this.nameView.setRightDrawable(this.rightDrawable);
            this.rightDrawable.set(emojiStatusDocumentId.longValue(), z);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
            if (swapAnimatedEmojiDrawable != null) {
                swapAnimatedEmojiDrawable.attach();
            }
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.userEmojiStatusUpdated);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
            if (swapAnimatedEmojiDrawable != null) {
                swapAnimatedEmojiDrawable.detach();
            }
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.userEmojiStatusUpdated);
        }
    }
}
