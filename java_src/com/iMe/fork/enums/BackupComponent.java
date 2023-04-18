package com.iMe.fork.enums;

import org.telegram.messenger.C3242R;
/* compiled from: BackupComponent.kt */
/* loaded from: classes3.dex */
public enum BackupComponent {
    TOOLS(C3242R.string.settings_tools),
    MULTI_PANEL(C3242R.string.backup_component_multi_panel),
    FILTERS(C3242R.string.backup_component_filters),
    SORTING(C3242R.string.backup_component_sorting),
    ALBUMS(C3242R.string.backup_component_albums),
    BOOKMARKS(C3242R.string.chat_bookmarks),
    MUSIC(C3242R.string.cloud_filter_music),
    TRANSLATION(C3242R.string.backup_component_translation),
    TEMPLATES(C3242R.string.chat_templates),
    TOPICS(C3242R.string.backup_component_topics);
    
    private final int titleResId;

    BackupComponent(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }
}
