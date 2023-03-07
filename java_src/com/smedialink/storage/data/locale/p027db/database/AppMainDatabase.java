package com.smedialink.storage.data.locale.p027db.database;

import androidx.room.RoomDatabase;
import com.smedialink.storage.data.locale.p027db.dao.main.BookmarksDao;
import com.smedialink.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao;
import com.smedialink.storage.data.locale.p027db.dao.main.FiltersDao;
import com.smedialink.storage.data.locale.p027db.dao.main.HistoryDialogDao;
import com.smedialink.storage.data.locale.p027db.dao.main.PlaylistsDao;
import com.smedialink.storage.data.locale.p027db.dao.main.TemplatesDao;
import com.smedialink.storage.data.locale.p027db.dao.main.TopicsDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletConnectSessionsDao;
/* compiled from: AppMainDatabase.kt */
/* renamed from: com.smedialink.storage.data.locale.db.database.AppMainDatabase */
/* loaded from: classes3.dex */
public abstract class AppMainDatabase extends RoomDatabase {
    public abstract BookmarksDao bookmarksDao();

    public abstract DialogTranslationSettingsDao dialogTranslationSettingsDao();

    public abstract FiltersDao filtersDao();

    public abstract HistoryDialogDao historyDialogDao();

    public abstract PlaylistsDao playlistsDao();

    public abstract TemplatesDao templatesDao();

    public abstract TopicsDao topicsDao();

    public abstract WalletConnectSessionsDao walletConnectSessionsDao();
}
