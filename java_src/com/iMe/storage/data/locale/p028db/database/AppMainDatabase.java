package com.iMe.storage.data.locale.p028db.database;

import androidx.room.RoomDatabase;
import com.iMe.storage.data.locale.p028db.dao.main.BookmarksDao;
import com.iMe.storage.data.locale.p028db.dao.main.DialogTranslationSettingsDao;
import com.iMe.storage.data.locale.p028db.dao.main.FiltersDao;
import com.iMe.storage.data.locale.p028db.dao.main.HistoryDialogDao;
import com.iMe.storage.data.locale.p028db.dao.main.PlaylistsDao;
import com.iMe.storage.data.locale.p028db.dao.main.TemplatesDao;
import com.iMe.storage.data.locale.p028db.dao.main.TopicsDao;
import com.iMe.storage.data.locale.p028db.dao.minor.wallet.WalletConnectSessionsDao;
/* compiled from: AppMainDatabase.kt */
/* renamed from: com.iMe.storage.data.locale.db.database.AppMainDatabase */
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
