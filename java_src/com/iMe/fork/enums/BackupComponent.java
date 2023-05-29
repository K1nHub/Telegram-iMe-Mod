package com.iMe.fork.enums;

import org.telegram.messenger.C3290R;
/* compiled from: BackupComponent.kt */
/* loaded from: classes3.dex */
public enum BackupComponent {
    TOOLS(C3290R.string.settings_tools),
    MULTI_PANEL(C3290R.string.backup_component_multi_panel),
    FILTERS(C3290R.string.backup_component_filters),
    SORTING(C3290R.string.backup_component_sorting),
    ALBUMS(C3290R.string.backup_component_albums),
    BOOKMARKS(C3290R.string.chat_bookmarks),
    MUSIC(C3290R.string.cloud_filter_music),
    TRANSLATION(C3290R.string.backup_component_translation),
    TEMPLATES(C3290R.string.chat_templates),
    TOPICS(C3290R.string.backup_component_topics),
    HIDDEN_CHATS(C3290R.string.hidden_chats_title),
    RECENT_CHATS(C3290R.string.settings_interface_recent_chats);
    
    private final int titleResId;

    BackupComponent(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }
}
