package org.fork.p046ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.enums.DrawerSocialNetwork;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: SocialNetworksRowView.kt */
/* renamed from: org.fork.ui.view.SocialNetworksRowView */
/* loaded from: classes4.dex */
public final class SocialNetworksRowView extends LinearLayout {
    private OnSocialNetworkClickListener listener;

    /* compiled from: SocialNetworksRowView.kt */
    /* renamed from: org.fork.ui.view.SocialNetworksRowView$OnSocialNetworkClickListener */
    /* loaded from: classes4.dex */
    public interface OnSocialNetworkClickListener {
        void onSocialNetworkClick(DrawerSocialNetwork drawerSocialNetwork, boolean z);
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialNetworksRowView(Context context) {
        super(context);
        DrawerSocialNetwork[] values;
        Intrinsics.checkNotNullParameter(context, "context");
        setWillNotDraw(false);
        for (final DrawerSocialNetwork drawerSocialNetwork : DrawerSocialNetwork.values()) {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21")));
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.view.SocialNetworksRowView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SocialNetworksRowView.m2113lambda4$lambda2$lambda0(SocialNetworksRowView.this, drawerSocialNetwork, view);
                }
            });
            frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.fork.ui.view.SocialNetworksRowView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m2114lambda4$lambda2$lambda1;
                    m2114lambda4$lambda2$lambda1 = SocialNetworksRowView.m2114lambda4$lambda2$lambda1(SocialNetworksRowView.this, drawerSocialNetwork, view);
                    return m2114lambda4$lambda2$lambda1;
                }
            });
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_menuItemIcon"), PorterDuff.Mode.SRC_IN));
            imageView.setImageResource(drawerSocialNetwork.getIconResId());
            frameLayout.addView(imageView, LayoutHelper.createFrame(-2, -2, 17));
            addView(frameLayout, LayoutHelper.createLinear(0, -1, 1.0f));
        }
    }

    public final OnSocialNetworkClickListener getListener() {
        return this.listener;
    }

    public final void setListener(OnSocialNetworkClickListener onSocialNetworkClickListener) {
        this.listener = onSocialNetworkClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lambda-4$lambda-2$lambda-0  reason: not valid java name */
    public static final void m2113lambda4$lambda2$lambda0(SocialNetworksRowView this$0, DrawerSocialNetwork network, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(network, "$network");
        OnSocialNetworkClickListener listener = this$0.getListener();
        if (listener == null) {
            return;
        }
        listener.onSocialNetworkClick(network, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lambda-4$lambda-2$lambda-1  reason: not valid java name */
    public static final boolean m2114lambda4$lambda2$lambda1(SocialNetworksRowView this$0, DrawerSocialNetwork network, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(network, "$network");
        OnSocialNetworkClickListener listener = this$0.getListener();
        if (listener != null) {
            listener.onSocialNetworkClick(network, true);
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m50dp(AndroidUtilities.getShadowHeight()), Theme.dividerPaint);
    }

    /* compiled from: SocialNetworksRowView.kt */
    /* renamed from: org.fork.ui.view.SocialNetworksRowView$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
