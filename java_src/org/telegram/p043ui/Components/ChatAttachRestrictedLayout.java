package org.telegram.p043ui.Components;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import moxy.MvpDelegate;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.ChatAttachAlert;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: org.telegram.ui.Components.ChatAttachRestrictedLayout */
/* loaded from: classes6.dex */
public class ChatAttachRestrictedLayout extends ChatAttachAlert.AttachAlertLayout {
    private final RecyclerView.Adapter adapter;
    private int gridExtraSpace;

    /* renamed from: id */
    public final int f1831id;
    private final RecyclerListView listView;
    private final EmptyTextProgressView progressView;

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, org.koin.core.component.KoinComponent
    public /* bridge */ /* synthetic */ Koin getKoin() {
        Koin koin;
        koin = KoinJavaComponent.getKoin();
        return koin;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, com.iMe.p030ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public /* bridge */ /* synthetic */ MvpDelegate<T> getMvpDelegate() {
        MvpDelegate<T> mMvpDelegate;
        mMvpDelegate = getMMvpDelegate();
        return mMvpDelegate;
    }

    public ChatAttachRestrictedLayout(int i, ChatAttachAlert chatAttachAlert, Context context, Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.f1831id = i;
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context, null, resourcesProvider);
        this.progressView = emptyTextProgressView;
        emptyTextProgressView.setText(LocaleController.getString("NoPhotos", C3632R.string.NoPhotos));
        emptyTextProgressView.setOnTouchListener(null);
        emptyTextProgressView.setTextSize(16);
        addView(emptyTextProgressView, LayoutHelper.createFrame(-1, -2));
        emptyTextProgressView.setLottie(C3632R.raw.media_forbidden, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        TLRPC$Chat currentChat = ((ChatActivity) this.parentAlert.baseFragment).getCurrentChat();
        if (i == 1) {
            emptyTextProgressView.setText(ChatObject.getRestrictedErrorText(currentChat, 7));
        } else if (i == 3) {
            emptyTextProgressView.setText(ChatObject.getRestrictedErrorText(currentChat, 18));
        } else if (i == 4) {
            emptyTextProgressView.setText(ChatObject.getRestrictedErrorText(currentChat, 19));
        } else {
            emptyTextProgressView.setText(ChatObject.getRestrictedErrorText(currentChat, 22));
        }
        emptyTextProgressView.showTextView();
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider);
        this.listView = recyclerListView;
        recyclerListView.setSectionsType(2);
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setLayoutManager(new LinearLayoutManager(context));
        recyclerListView.setClipToPadding(false);
        RecyclerView.Adapter adapter = new RecyclerView.Adapter() { // from class: org.telegram.ui.Components.ChatAttachRestrictedLayout.1
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return 1;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                return new RecyclerListView.Holder(new View(ChatAttachRestrictedLayout.this.getContext()) { // from class: org.telegram.ui.Components.ChatAttachRestrictedLayout.1.1
                    @Override // android.view.View
                    protected void onMeasure(int i3, int i4) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 1073741824), View.MeasureSpec.makeMeasureSpec(ChatAttachRestrictedLayout.this.gridExtraSpace, 1073741824));
                    }
                });
            }
        };
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        recyclerListView.setPadding(0, 0, 0, AndroidUtilities.m107dp(48));
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachRestrictedLayout.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                ChatAttachRestrictedLayout chatAttachRestrictedLayout = ChatAttachRestrictedLayout.this;
                chatAttachRestrictedLayout.parentAlert.updateLayout(chatAttachRestrictedLayout, true, i3);
            }
        });
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1));
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.listView.getChildCount() <= 0) {
            return Integer.MAX_VALUE;
        }
        int i = 0;
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = childAt.getTop() - AndroidUtilities.m107dp(8);
        if (top > 0 && holder != null && holder.getAdapterPosition() == 0) {
            i = top;
        }
        if (top < 0 || holder == null || holder.getAdapterPosition() != 0) {
            top = i;
        }
        this.progressView.setTranslationY(((((getMeasuredHeight() - top) - AndroidUtilities.m107dp(50)) - this.progressView.getMeasuredHeight()) / 2) + top);
        return top + AndroidUtilities.m107dp(12);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m107dp(4);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.listView.getPaddingTop();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPreMeasure(int r4, int r5) {
        /*
            r3 = this;
            super.onPreMeasure(r4, r5)
            int r4 = org.telegram.p043ui.ActionBar.C3704ActionBar.getCurrentActionBarHeight()
            int r4 = r5 - r4
            r0 = 0
            int r4 = java.lang.Math.max(r0, r4)
            int r1 = r3.gridExtraSpace
            if (r1 == r4) goto L19
            r3.gridExtraSpace = r4
            androidx.recyclerview.widget.RecyclerView$Adapter r4 = r3.adapter
            r4.notifyDataSetChanged()
        L19:
            boolean r4 = org.telegram.messenger.AndroidUtilities.isTablet()
            if (r4 != 0) goto L2d
            android.graphics.Point r4 = org.telegram.messenger.AndroidUtilities.displaySize
            int r1 = r4.x
            int r4 = r4.y
            if (r1 <= r4) goto L2d
            float r4 = (float) r5
            r5 = 1080033280(0x40600000, float:3.5)
            float r4 = r4 / r5
            int r4 = (int) r4
            goto L31
        L2d:
            int r5 = r5 / 5
            int r4 = r5 * 2
        L31:
            r5 = 52
            int r5 = org.telegram.messenger.AndroidUtilities.m107dp(r5)
            int r4 = r4 - r5
            if (r4 >= 0) goto L3b
            goto L3c
        L3b:
            r0 = r4
        L3c:
            org.telegram.ui.Components.RecyclerListView r4 = r3.listView
            int r4 = r4.getPaddingTop()
            if (r4 == r0) goto L58
            org.telegram.ui.Components.RecyclerListView r4 = r3.listView
            r5 = 6
            int r1 = org.telegram.messenger.AndroidUtilities.m107dp(r5)
            int r5 = org.telegram.messenger.AndroidUtilities.m107dp(r5)
            r2 = 48
            int r2 = org.telegram.messenger.AndroidUtilities.m107dp(r2)
            r4.setPadding(r1, r0, r5, r2)
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachRestrictedLayout.onPreMeasure(int, int):void");
    }
}
