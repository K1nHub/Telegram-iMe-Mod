package com.iMe.fork.enums;

import org.telegram.messenger.C3417R;
/* compiled from: BackupComponent.kt */
/* loaded from: classes3.dex */
public enum BackupComponent {
    TOOLS(C3417R.string.settings_tools),
    MULTI_PANEL(C3417R.string.backup_component_multi_panel),
    FILTERS(C3417R.string.backup_component_filters),
    SORTING(C3417R.string.backup_component_sorting),
    ALBUMS(C3417R.string.backup_component_albums),
    MUSIC(C3417R.string.cloud_filter_music),
    TRANSLATION(C3417R.string.backup_component_translation),
    TEMPLATES(C3417R.string.chat_templates),
    TOPICS(C3417R.string.backup_component_topics),
    HIDDEN_CHATS(C3417R.string.hidden_chats_title),
    RECENT_CHATS(C3417R.string.settings_interface_recent_chats);
    
    private final int titleResId;

    BackupComponent(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }
}
