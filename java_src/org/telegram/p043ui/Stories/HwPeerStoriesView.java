package org.telegram.p043ui.Stories;

import android.content.Context;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Stories.PeerStoriesView;
/* compiled from: HwLayouts.java */
/* renamed from: org.telegram.ui.Stories.HwPeerStoriesView */
/* loaded from: classes6.dex */
class HwPeerStoriesView extends PeerStoriesView {
    public HwPeerStoriesView(Context context, StoryViewer storyViewer, PeerStoriesView.SharedResources sharedResources, Theme.ResourcesProvider resourcesProvider) {
        super(context, storyViewer, sharedResources, resourcesProvider);
    }

    @Override // android.view.View
    public void invalidate() {
        if (HwFrameLayout.hwEnabled) {
            HwFrameLayout.hwViews.add(this);
        } else {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        if (HwFrameLayout.hwEnabled) {
            HwFrameLayout.hwViews.add(this);
        } else {
            super.invalidate(i, i2, i3, i4);
        }
    }
}
