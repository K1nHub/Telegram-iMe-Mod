package com.iMe.fork.enums;

import org.telegram.messenger.C3295R;
/* compiled from: BackupComponent.kt */
/* loaded from: classes3.dex */
public enum BackupComponent {
    TOOLS(C3295R.string.settings_tools),
    MULTI_PANEL(C3295R.string.backup_component_multi_panel),
    FILTERS(C3295R.string.backup_component_filters),
    SORTING(C3295R.string.backup_component_sorting),
    ALBUMS(C3295R.string.backup_component_albums),
    BOOKMARKS(C3295R.string.chat_bookmarks),
    MUSIC(C3295R.string.cloud_filter_music),
    TRANSLATION(C3295R.string.backup_component_translation),
    TEMPLATES(C3295R.string.chat_templates),
    TOPICS(C3295R.string.backup_component_topics),
    HIDDEN_CHATS(C3295R.string.hidden_chats_title),
    RECENT_CHATS(C3295R.string.settings_interface_recent_chats);
    
    private final int titleResId;

    BackupComponent(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }
}
