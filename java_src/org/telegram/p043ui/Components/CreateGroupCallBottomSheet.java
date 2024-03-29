package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.GroupCreateUserCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Components.JoinCallAlert;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Peer;
/* renamed from: org.telegram.ui.Components.CreateGroupCallBottomSheet */
/* loaded from: classes6.dex */
public class CreateGroupCallBottomSheet extends BottomSheetWithRecyclerListView {
    private final List<TLRPC$Peer> chats;
    private final boolean isChannelOrGiga;
    private boolean isScheduleSelected;
    private final JoinCallAlert.JoinCallAlertDelegate joinCallDelegate;
    private final boolean needSelector;
    private TLRPC$InputPeer selectAfterDismiss;
    private TLRPC$Peer selectedPeer;

    public static void show(ArrayList<TLRPC$Peer> arrayList, BaseFragment baseFragment, long j, JoinCallAlert.JoinCallAlertDelegate joinCallAlertDelegate) {
        if (arrayList.isEmpty()) {
            return;
        }
        CreateGroupCallBottomSheet createGroupCallBottomSheet = new CreateGroupCallBottomSheet(baseFragment, arrayList, j, joinCallAlertDelegate);
        if (baseFragment != null && baseFragment.getParentActivity() != null) {
            baseFragment.showDialog(createGroupCallBottomSheet);
        } else {
            createGroupCallBottomSheet.show();
        }
    }

    public CreateGroupCallBottomSheet(BaseFragment baseFragment, ArrayList<TLRPC$Peer> arrayList, long j, JoinCallAlert.JoinCallAlertDelegate joinCallAlertDelegate) {
        super(baseFragment, false, false);
        String formatString;
        String formatString2;
        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
        this.topPadding = 0.26f;
        ArrayList arrayList2 = new ArrayList(arrayList);
        this.chats = arrayList2;
        this.joinCallDelegate = joinCallAlertDelegate;
        boolean isChannelOrGiga = ChatObject.isChannelOrGiga(chat);
        this.isChannelOrGiga = isChannelOrGiga;
        this.selectedPeer = (TLRPC$Peer) arrayList2.get(0);
        this.needSelector = arrayList2.size() > 1;
        Context context = this.containerView.getContext();
        this.containerView.addView(new View(context) { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet.1
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                if (CreateGroupCallBottomSheet.this.needSelector) {
                    canvas.drawRect(((BottomSheet) CreateGroupCallBottomSheet.this).backgroundPaddingLeft, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth() - ((BottomSheet) CreateGroupCallBottomSheet.this).backgroundPaddingLeft, 1.0f, Theme.dividerPaint);
                }
            }
        }, LayoutHelper.createFrame(-1, 120, 80, 0, 0, 0, 0));
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSingleLine(true);
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        if (isChannelOrGiga) {
            formatString = LocaleController.formatString("VoipChannelStartVoiceChat", C3632R.string.VoipChannelStartVoiceChat, new Object[0]);
        } else {
            formatString = LocaleController.formatString("VoipGroupStartVoiceChat", C3632R.string.VoipGroupStartVoiceChat, new Object[0]);
        }
        textView.setText(formatString);
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        int m107dp = AndroidUtilities.m107dp(8);
        int i = Theme.key_featuredStickers_addButton;
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(m107dp, Theme.getColor(i), ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite), 120)));
        this.containerView.addView(textView, LayoutHelper.createFrame(-1, 48, 80, 16, 0, 16, 60));
        TextView textView2 = new TextView(context);
        textView2.setGravity(17);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setSingleLine(true);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        if (isChannelOrGiga) {
            formatString2 = LocaleController.formatString("VoipChannelScheduleVoiceChat", C3632R.string.VoipChannelScheduleVoiceChat, new Object[0]);
        } else {
            formatString2 = LocaleController.formatString("VoipGroupScheduleVoiceChat", C3632R.string.VoipGroupScheduleVoiceChat, new Object[0]);
        }
        textView2.setText(formatString2);
        if (Build.VERSION.SDK_INT >= 21) {
            textView2.setLetterSpacing(0.025f);
        }
        textView2.setTextColor(Theme.getColor(i));
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(8), 0, ColorUtils.setAlphaComponent(Theme.getColor(i), 120)));
        this.containerView.addView(textView2, LayoutHelper.createFrame(-1, 48, 80, 16, 0, 16, 6));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateGroupCallBottomSheet.this.lambda$new$0(view);
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateGroupCallBottomSheet.this.lambda$new$1(view);
            }
        });
        RecyclerListView recyclerListView = this.recyclerListView;
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, AndroidUtilities.m107dp(120));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                CreateGroupCallBottomSheet.this.lambda$new$2(view, i3);
            }
        });
        fixNavigationBar();
        updateTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.selectAfterDismiss = MessagesController.getInstance(this.currentAccount).getInputPeer(MessageObject.getPeerId(this.selectedPeer));
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.selectAfterDismiss = MessagesController.getInstance(this.currentAccount).getInputPeer(MessageObject.getPeerId(this.selectedPeer));
        this.isScheduleSelected = true;
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view, int i) {
        if (i <= 3) {
            return;
        }
        this.selectedPeer = this.chats.get((i - 3) - 1);
        if (view instanceof GroupCreateUserCell) {
            ((GroupCreateUserCell) view).setChecked(true, true);
        }
        for (int i2 = 0; i2 < this.recyclerListView.getChildCount(); i2++) {
            View childAt = this.recyclerListView.getChildAt(i2);
            if (childAt != view && (childAt instanceof GroupCreateUserCell)) {
                ((GroupCreateUserCell) childAt).setChecked(false, true);
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        TLRPC$InputPeer tLRPC$InputPeer = this.selectAfterDismiss;
        if (tLRPC$InputPeer != null) {
            this.joinCallDelegate.didSelectChat(tLRPC$InputPeer, this.chats.size() > 1, this.isScheduleSelected);
        }
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        if (this.isChannelOrGiga) {
            return LocaleController.getString("StartVoipChannelTitle", C3632R.string.StartVoipChannelTitle);
        }
        return LocaleController.getString("StartVoipChatTitle", C3632R.string.StartVoipChatTitle);
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter() {
        return new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet.2
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (i != 0) {
                    int i2 = 1;
                    if (i != 1) {
                        i2 = 2;
                        if (i != 2) {
                            return 3;
                        }
                    }
                    return i2;
                }
                return 0;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return viewHolder.getItemViewType() == 3;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View shadowSectionCell;
                Context context = viewGroup.getContext();
                if (i == 1) {
                    shadowSectionCell = new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray));
                } else if (i == 2) {
                    shadowSectionCell = new HeaderCell(context, 22);
                } else if (i != 3) {
                    shadowSectionCell = new TopCell(context, CreateGroupCallBottomSheet.this.isChannelOrGiga);
                } else {
                    shadowSectionCell = new GroupCreateUserCell(context, 1, 0, false);
                }
                shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(shadowSectionCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                TLObject chat;
                String str;
                if (viewHolder.getItemViewType() == 3) {
                    TLRPC$Peer tLRPC$Peer = (TLRPC$Peer) CreateGroupCallBottomSheet.this.chats.get(i - 3);
                    long peerId = MessageObject.getPeerId(tLRPC$Peer);
                    if (peerId > 0) {
                        chat = MessagesController.getInstance(((BottomSheet) CreateGroupCallBottomSheet.this).currentAccount).getUser(Long.valueOf(peerId));
                        str = LocaleController.getString("VoipGroupPersonalAccount", C3632R.string.VoipGroupPersonalAccount);
                    } else {
                        chat = MessagesController.getInstance(((BottomSheet) CreateGroupCallBottomSheet.this).currentAccount).getChat(Long.valueOf(-peerId));
                        str = null;
                    }
                    GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
                    groupCreateUserCell.setObject(chat, null, str, i != getItemCount() - 1);
                    groupCreateUserCell.setChecked(tLRPC$Peer == CreateGroupCallBottomSheet.this.selectedPeer, false);
                } else if (viewHolder.getItemViewType() == 2) {
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    headerCell.setTextSize(15.0f);
                    headerCell.setPadding(0, 0, 0, AndroidUtilities.m107dp(2));
                    headerCell.setText(LocaleController.getString("VoipChatDisplayedAs", C3632R.string.VoipChatDisplayedAs).replace(":", ""));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                if (CreateGroupCallBottomSheet.this.needSelector) {
                    return CreateGroupCallBottomSheet.this.chats.size() + 3;
                }
                return 1;
            }
        };
    }

    /* renamed from: org.telegram.ui.Components.CreateGroupCallBottomSheet$TopCell */
    /* loaded from: classes6.dex */
    private static class TopCell extends LinearLayout {
        public TopCell(Context context, boolean z) {
            super(context);
            String formatString;
            String formatString2;
            setOrientation(1);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            rLottieImageView.setAutoRepeat(true);
            rLottieImageView.setAnimation(C3632R.raw.utyan_schedule, 112, 112);
            rLottieImageView.playAnimation();
            addView(rLottieImageView, LayoutHelper.createLinear(112, 112, 49, 0, 24, 0, 0));
            TextView textView = new TextView(context);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            if (z) {
                formatString = LocaleController.formatString("StartVoipChannelTitle", C3632R.string.StartVoipChannelTitle, new Object[0]);
            } else {
                formatString = LocaleController.formatString("StartVoipChatTitle", C3632R.string.StartVoipChatTitle, new Object[0]);
            }
            textView.setText(formatString);
            textView.setTextSize(1, 20.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 14, 0, 7));
            TextView textView2 = new TextView(context);
            textView2.setTextSize(1, 14.0f);
            textView2.setGravity(1);
            textView2.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            if (z) {
                formatString2 = LocaleController.formatString("VoipChannelStart2", C3632R.string.VoipChannelStart2, new Object[0]);
            } else {
                formatString2 = LocaleController.formatString("VoipGroupStart2", C3632R.string.VoipGroupStart2, new Object[0]);
            }
            textView2.setText(formatString2);
            textView2.setLineSpacing(textView2.getLineSpacingExtra(), textView2.getLineSpacingMultiplier() * 1.1f);
            addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 28, 0, 28, 17));
        }
    }
}
