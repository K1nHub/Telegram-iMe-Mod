package com.iMe.fork.enums;

import org.telegram.messenger.C3558R;
/* compiled from: LockedSection.kt */
/* loaded from: classes3.dex */
public enum LockedSection {
    ARCHIVE(C3558R.string.settings_section_passcode_archive, C3558R.C3560drawable.msg_archive),
    CLOUD(C3558R.string.settings_section_passcode_cloud, C3558R.C3560drawable.fork_filter_icon_cloud);
    
    private final int iconResId;
    private final int nameResId;

    LockedSection(int i, int i2) {
        this.nameResId = i;
        this.iconResId = i2;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getNameResId() {
        return this.nameResId;
    }
}
