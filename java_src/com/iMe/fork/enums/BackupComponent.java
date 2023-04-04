package com.iMe.fork.enums;

import org.telegram.messenger.C3316R;
/* compiled from: BackupComponent.kt */
/* loaded from: classes3.dex */
public enum BackupComponent {
    INTERFACE(C3316R.string.settings_interface),
    MULTI_PANEL(C3316R.string.backup_component_multi_panel),
    TOOLS(C3316R.string.settings_tools),
    FILTERS(C3316R.string.backup_component_filters),
    SORTING(C3316R.string.backup_component_sorting),
    ALBUMS(C3316R.string.backup_component_albums),
    BOOKMARKS(C3316R.string.chat_bookmarks),
    MUSIC(C3316R.string.cloud_filter_music),
    TRANSLATION(C3316R.string.backup_component_translation),
    TEMPLATES(C3316R.string.chat_templates),
    TOPICS(C3316R.string.backup_component_topics);
    
    private final int titleResId;

    BackupComponent(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }
}
