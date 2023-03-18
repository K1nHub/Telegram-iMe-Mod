package org.fork.enums;

import org.telegram.messenger.C3286R;
/* compiled from: BackupComponent.kt */
/* loaded from: classes4.dex */
public enum BackupComponent {
    INTERFACE(C3286R.string.settings_interface),
    MULTI_PANEL(C3286R.string.backup_component_multi_panel),
    TOOLS(C3286R.string.settings_tools),
    FILTERS(C3286R.string.backup_component_filters),
    SORTING(C3286R.string.backup_component_sorting),
    ALBUMS(C3286R.string.backup_component_albums),
    BOOKMARKS(C3286R.string.chat_bookmarks),
    MUSIC(C3286R.string.cloud_filter_music),
    TRANSLATION(C3286R.string.backup_component_translation),
    TEMPLATES(C3286R.string.chat_templates),
    TOPICS(C3286R.string.backup_component_topics);
    
    private final int titleResId;

    BackupComponent(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }
}
