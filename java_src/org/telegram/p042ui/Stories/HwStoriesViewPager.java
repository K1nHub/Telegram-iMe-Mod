package org.telegram.p042ui.Stories;

import android.content.Context;
import org.telegram.p042ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HwLayouts.java */
/* renamed from: org.telegram.ui.Stories.HwStoriesViewPager */
/* loaded from: classes6.dex */
public class HwStoriesViewPager extends StoriesViewPager {
    public HwStoriesViewPager(Context context, StoryViewer storyViewer, Theme.ResourcesProvider resourcesProvider) {
        super(context, storyViewer, resourcesProvider);
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
