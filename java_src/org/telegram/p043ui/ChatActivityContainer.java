package org.telegram.p043ui;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.ChatActivityContainer */
/* loaded from: classes5.dex */
public class ChatActivityContainer extends FrameLayout {
    public final ChatActivity chatActivity;
    private View fragmentView;
    private boolean isActive;
    private final INavigationLayout parentLayout;

    public ChatActivityContainer(Context context, INavigationLayout iNavigationLayout, Bundle bundle) {
        super(context);
        this.isActive = true;
        this.parentLayout = iNavigationLayout;
        ChatActivity chatActivity = new ChatActivity(bundle);
        this.chatActivity = chatActivity;
        chatActivity.isInsideContainer = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.chatActivity.onFragmentCreate()) {
            ChatActivity chatActivity = this.chatActivity;
            this.fragmentView = chatActivity.fragmentView;
            chatActivity.setParentLayout(this.parentLayout);
            View view = this.fragmentView;
            if (view == null) {
                this.fragmentView = this.chatActivity.createView(getContext());
            } else {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    this.chatActivity.onRemoveFromParent();
                    viewGroup.removeView(this.fragmentView);
                }
            }
            addView(this.fragmentView, LayoutHelper.createFrame(-1, -1));
            if (this.isActive) {
                this.chatActivity.onResume();
            }
        }
    }

    public void onPause() {
        this.isActive = false;
        if (this.fragmentView != null) {
            this.chatActivity.onPause();
        }
    }

    public void onResume() {
        this.isActive = true;
        if (this.fragmentView != null) {
            this.chatActivity.onResume();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
