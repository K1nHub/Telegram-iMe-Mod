package com.iMe.storage.data.locale.p026db.database;

import androidx.room.RoomDatabase;
import com.iMe.storage.data.locale.p026db.dao.main.AlbumsDao;
import com.iMe.storage.data.locale.p026db.dao.main.DialogTranslationSettingsDao;
import com.iMe.storage.data.locale.p026db.dao.main.FiltersDao;
import com.iMe.storage.data.locale.p026db.dao.main.HiddenChatsDao;
import com.iMe.storage.data.locale.p026db.dao.main.HistoryDialogDao;
import com.iMe.storage.data.locale.p026db.dao.main.PlaylistsDao;
import com.iMe.storage.data.locale.p026db.dao.main.TemplatesDao;
import com.iMe.storage.data.locale.p026db.dao.main.TopicsDao;
import com.iMe.storage.data.locale.p026db.dao.minor.wallet.WalletConnectSessionsDao;
/* compiled from: AppMainDatabase.kt */
/* renamed from: com.iMe.storage.data.locale.db.database.AppMainDatabase */
/* loaded from: classes3.dex */
public abstract class AppMainDatabase extends RoomDatabase {
    public abstract AlbumsDao albumsDao();

    public abstract DialogTranslationSettingsDao dialogTranslationSettingsDao();

    public abstract FiltersDao filtersDao();

    public abstract HiddenChatsDao hiddenChatsDao();

    public abstract HistoryDialogDao historyDialogDao();

    public abstract PlaylistsDao playlistsDao();

    public abstract TemplatesDao templatesDao();

    public abstract TopicsDao topicsDao();

    public abstract WalletConnectSessionsDao walletConnectSessionsDao();
}
