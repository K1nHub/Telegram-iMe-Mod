package org.fork.enums;

import org.telegram.messenger.C3301R;
/* compiled from: BackupComponent.kt */
/* loaded from: classes4.dex */
public enum BackupComponent {
    INTERFACE(C3301R.string.settings_interface),
    MULTI_PANEL(C3301R.string.backup_component_multi_panel),
    TOOLS(C3301R.string.settings_tools),
    FILTERS(C3301R.string.backup_component_filters),
    SORTING(C3301R.string.backup_component_sorting),
    ALBUMS(C3301R.string.backup_component_albums),
    BOOKMARKS(C3301R.string.chat_bookmarks),
    MUSIC(C3301R.string.cloud_filter_music),
    TRANSLATION(C3301R.string.backup_component_translation),
    TEMPLATES(C3301R.string.chat_templates),
    TOPICS(C3301R.string.backup_component_topics);
    
    private final int titleResId;

    BackupComponent(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }
}
