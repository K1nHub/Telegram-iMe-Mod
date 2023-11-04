package org.telegram.p043ui;

import org.telegram.p043ui.ThemePreviewActivity;
/* renamed from: org.telegram.ui.WallpapersListActivity$$ExternalSyntheticLambda8 */
/* loaded from: classes5.dex */
public final /* synthetic */ class WallpapersListActivity$$ExternalSyntheticLambda8 implements ThemePreviewActivity.WallpaperActivityDelegate {
    public final /* synthetic */ WallpapersListActivity f$0;

    public /* synthetic */ WallpapersListActivity$$ExternalSyntheticLambda8(WallpapersListActivity wallpapersListActivity) {
        this.f$0 = wallpapersListActivity;
    }

    @Override // org.telegram.p043ui.ThemePreviewActivity.WallpaperActivityDelegate
    public final void didSetNewBackground() {
        this.f$0.removeSelfFromStack();
    }
}
