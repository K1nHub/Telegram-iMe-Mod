package org.telegram.messenger;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.Pair;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.telegram.messenger.NotificationBadge;
import org.telegram.p043ui.ActionBar.EmojiThemes;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatBackgroundDrawable;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.ResultCallback;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$TL_account_getChatThemes;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageActionSetChatWallPaper;
import org.telegram.tgnet.TLRPC$TL_messages_setChatTheme;
import org.telegram.tgnet.TLRPC$TL_messages_setChatWallPaper;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_theme;
import org.telegram.tgnet.TLRPC$TL_updateNewMessage;
import org.telegram.tgnet.TLRPC$TL_updatePeerWallpaper;
import org.telegram.tgnet.TLRPC$TL_wallPaper;
import org.telegram.tgnet.TLRPC$TL_wallPaperNoFile;
import org.telegram.tgnet.TLRPC$TL_wallPaperSettings;
import org.telegram.tgnet.TLRPC$Theme;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$WallPaper;
import org.telegram.tgnet.TLRPC$WallPaperSettings;
/* loaded from: classes4.dex */
public class ChatThemeController extends BaseController {
    public static volatile DispatchQueue chatThemeQueue = new DispatchQueue("chatThemeQueue");
    private static final ChatThemeController[] instances = new ChatThemeController[5];
    private List<EmojiThemes> allChatThemes;
    private final LongSparseArray<String> dialogEmoticonsMap;
    private volatile long lastReloadTimeMs;
    private final long reloadTimeoutMs;
    private final HashMap<Long, Bitmap> themeIdWallpaperThumbMap;
    private volatile long themesHash;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$clearWallpaper$10(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public void clearWallpaperImages() {
    }

    private ChatThemeController(int i) {
        super(i);
        this.reloadTimeoutMs = 7200000L;
        this.themeIdWallpaperThumbMap = new HashMap<>();
        this.dialogEmoticonsMap = new LongSparseArray<>();
        init();
    }

    private void init() {
        SharedPreferences sharedPreferences = getSharedPreferences();
        this.themesHash = 0L;
        this.lastReloadTimeMs = 0L;
        try {
            this.themesHash = sharedPreferences.getLong("hash", 0L);
            this.lastReloadTimeMs = sharedPreferences.getLong("lastReload", 0L);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        this.allChatThemes = getAllChatThemesFromPrefs();
        preloadSticker("❌");
        if (this.allChatThemes.isEmpty()) {
            return;
        }
        for (EmojiThemes emojiThemes : this.allChatThemes) {
            preloadSticker(emojiThemes.getEmoticon());
        }
    }

    private void preloadSticker(String str) {
        new ImageReceiver().setImage(ImageLocation.getForDocument(MediaDataController.getInstance(UserConfig.selectedAccount).getEmojiAnimatedSticker(str)), "50_50", null, null, null, 0);
        Emoji.preloadEmoji(str);
    }

    public void requestAllChatThemes(final ResultCallback<List<EmojiThemes>> resultCallback, final boolean z) {
        if (this.themesHash == 0 || this.lastReloadTimeMs == 0) {
            init();
        }
        boolean z2 = System.currentTimeMillis() - this.lastReloadTimeMs > 7200000;
        List<EmojiThemes> list = this.allChatThemes;
        if (list == null || list.isEmpty() || z2) {
            TLRPC$TL_account_getChatThemes tLRPC$TL_account_getChatThemes = new TLRPC$TL_account_getChatThemes();
            tLRPC$TL_account_getChatThemes.hash = this.themesHash;
            ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_account_getChatThemes, new RequestDelegate() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda10
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChatThemeController.this.lambda$requestAllChatThemes$3(resultCallback, z, tLObject, tLRPC$TL_error);
                }
            });
        }
        List<EmojiThemes> list2 = this.allChatThemes;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        ArrayList<EmojiThemes> arrayList = new ArrayList(this.allChatThemes);
        if (z && !arrayList.get(0).showAsDefaultStub) {
            arrayList.add(0, EmojiThemes.createChatThemesDefault(this.currentAccount));
        }
        for (EmojiThemes emojiThemes : arrayList) {
            emojiThemes.initColors();
        }
        resultCallback.onComplete(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestAllChatThemes$3(final ResultCallback resultCallback, final boolean z, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        chatThemeQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ChatThemeController.this.lambda$requestAllChatThemes$2(tLObject, resultCallback, tLRPC$TL_error, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$requestAllChatThemes$2(org.telegram.tgnet.TLObject r8, final org.telegram.tgnet.ResultCallback r9, final org.telegram.tgnet.TLRPC$TL_error r10, boolean r11) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof org.telegram.tgnet.TLRPC$TL_account_themes
            r1 = 0
            if (r0 == 0) goto L94
            org.telegram.tgnet.TLRPC$TL_account_themes r8 = (org.telegram.tgnet.TLRPC$TL_account_themes) r8
            long r2 = r8.hash
            r7.themesHash = r2
            long r2 = java.lang.System.currentTimeMillis()
            r7.lastReloadTimeMs = r2
            android.content.SharedPreferences r10 = r7.getSharedPreferences()
            android.content.SharedPreferences$Editor r10 = r10.edit()
            r10.clear()
            long r2 = r7.themesHash
            java.lang.String r0 = "hash"
            r10.putLong(r0, r2)
            long r2 = r7.lastReloadTimeMs
            java.lang.String r0 = "lastReload"
            r10.putLong(r0, r2)
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_theme> r0 = r8.themes
            int r0 = r0.size()
            java.lang.String r2 = "count"
            r10.putInt(r2, r0)
            java.util.ArrayList r0 = new java.util.ArrayList
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_theme> r2 = r8.themes
            int r2 = r2.size()
            r0.<init>(r2)
            r2 = r1
        L42:
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_theme> r3 = r8.themes
            int r3 = r3.size()
            if (r2 >= r3) goto L90
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_theme> r3 = r8.themes
            java.lang.Object r3 = r3.get(r2)
            org.telegram.tgnet.TLRPC$TL_theme r3 = (org.telegram.tgnet.TLRPC$TL_theme) r3
            java.lang.String r4 = r3.emoticon
            org.telegram.messenger.Emoji.preloadEmoji(r4)
            org.telegram.tgnet.SerializedData r4 = new org.telegram.tgnet.SerializedData
            int r5 = r3.getObjectSize()
            r4.<init>(r5)
            r3.serializeToStream(r4)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "theme_"
            r5.append(r6)
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            byte[] r4 = r4.toByteArray()
            java.lang.String r4 = org.telegram.messenger.Utilities.bytesToHex(r4)
            r10.putString(r5, r4)
            org.telegram.ui.ActionBar.EmojiThemes r4 = new org.telegram.ui.ActionBar.EmojiThemes
            int r5 = r7.currentAccount
            r4.<init>(r5, r3, r1)
            r4.preloadWallpaper()
            r0.add(r4)
            int r2 = r2 + 1
            goto L42
        L90:
            r10.apply()
            goto L9c
        L94:
            boolean r8 = r8 instanceof org.telegram.tgnet.TLRPC$TL_account_themesNotModified
            if (r8 == 0) goto L9e
            java.util.List r0 = r7.getAllChatThemesFromPrefs()
        L9c:
            r8 = r1
            goto La8
        L9e:
            r0 = 0
            org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda8 r8 = new org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda8
            r8.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r8)
            r8 = 1
        La8:
            if (r8 != 0) goto Ldb
            if (r11 == 0) goto Lbf
            java.lang.Object r8 = r0.get(r1)
            org.telegram.ui.ActionBar.EmojiThemes r8 = (org.telegram.p043ui.ActionBar.EmojiThemes) r8
            boolean r8 = r8.showAsDefaultStub
            if (r8 != 0) goto Lbf
            int r8 = r7.currentAccount
            org.telegram.ui.ActionBar.EmojiThemes r8 = org.telegram.p043ui.ActionBar.EmojiThemes.createChatThemesDefault(r8)
            r0.add(r1, r8)
        Lbf:
            java.util.Iterator r8 = r0.iterator()
        Lc3:
            boolean r10 = r8.hasNext()
            if (r10 == 0) goto Ld3
            java.lang.Object r10 = r8.next()
            org.telegram.ui.ActionBar.EmojiThemes r10 = (org.telegram.p043ui.ActionBar.EmojiThemes) r10
            r10.initColors()
            goto Lc3
        Ld3:
            org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda3 r8 = new org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda3
            r8.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r8)
        Ldb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ChatThemeController.lambda$requestAllChatThemes$2(org.telegram.tgnet.TLObject, org.telegram.tgnet.ResultCallback, org.telegram.tgnet.TLRPC$TL_error, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestAllChatThemes$1(List list, ResultCallback resultCallback) {
        this.allChatThemes = new ArrayList(list);
        resultCallback.onComplete(list);
    }

    private SharedPreferences getSharedPreferences() {
        Context context = ApplicationLoader.applicationContext;
        return context.getSharedPreferences("chatthemeconfig_" + this.currentAccount, 0);
    }

    private SharedPreferences getEmojiSharedPreferences() {
        return ApplicationLoader.applicationContext.getSharedPreferences("chatthemeconfig_emoji", 0);
    }

    private List<EmojiThemes> getAllChatThemesFromPrefs() {
        SharedPreferences sharedPreferences = getSharedPreferences();
        int i = sharedPreferences.getInt(NotificationBadge.NewHtcHomeBadger.COUNT, 0);
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(sharedPreferences.getString("theme_" + i2, "")));
            try {
                TLRPC$TL_theme TLdeserialize = TLRPC$Theme.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                if (TLdeserialize != null) {
                    arrayList.add(new EmojiThemes(this.currentAccount, TLdeserialize, false));
                }
            } catch (Throwable th) {
                FileLog.m102e(th);
            }
        }
        return arrayList;
    }

    public void requestChatTheme(final String str, final ResultCallback<EmojiThemes> resultCallback) {
        if (TextUtils.isEmpty(str)) {
            resultCallback.onComplete(null);
        } else {
            requestAllChatThemes(new ResultCallback<List<EmojiThemes>>() { // from class: org.telegram.messenger.ChatThemeController.1
                public /* bridge */ /* synthetic */ void onError(Throwable th) {
                    ResultCallback.CC.$default$onError(this, th);
                }

                @Override // org.telegram.tgnet.ResultCallback
                public void onComplete(List<EmojiThemes> list) {
                    for (EmojiThemes emojiThemes : list) {
                        if (str.equals(emojiThemes.getEmoticon())) {
                            emojiThemes.initColors();
                            resultCallback.onComplete(emojiThemes);
                            return;
                        }
                    }
                }

                @Override // org.telegram.tgnet.ResultCallback
                public void onError(TLRPC$TL_error tLRPC$TL_error) {
                    resultCallback.onComplete(null);
                }
            }, false);
        }
    }

    public static ChatThemeController getInstance(int i) {
        ChatThemeController[] chatThemeControllerArr = instances;
        ChatThemeController chatThemeController = chatThemeControllerArr[i];
        if (chatThemeController == null) {
            synchronized (ChatThemeController.class) {
                chatThemeController = chatThemeControllerArr[i];
                if (chatThemeController == null) {
                    chatThemeController = new ChatThemeController(i);
                    chatThemeControllerArr[i] = chatThemeController;
                }
            }
        }
        return chatThemeController;
    }

    public static boolean equals(TLRPC$WallPaper tLRPC$WallPaper, TLRPC$WallPaper tLRPC$WallPaper2) {
        if (tLRPC$WallPaper == null && tLRPC$WallPaper2 == null) {
            return true;
        }
        if (tLRPC$WallPaper == null || tLRPC$WallPaper2 == null) {
            return false;
        }
        String str = tLRPC$WallPaper.uploadingImage;
        if (str != null) {
            return TextUtils.equals(tLRPC$WallPaper2.uploadingImage, str);
        }
        return tLRPC$WallPaper.f1759id == tLRPC$WallPaper2.f1759id && TextUtils.equals(ChatBackgroundDrawable.hash(tLRPC$WallPaper.settings), ChatBackgroundDrawable.hash(tLRPC$WallPaper2.settings)) && TextUtils.equals(getWallpaperEmoticon(tLRPC$WallPaper), getWallpaperEmoticon(tLRPC$WallPaper2));
    }

    public void setDialogTheme(long j, String str, boolean z) {
        if (TextUtils.equals(this.dialogEmoticonsMap.get(j), str)) {
            return;
        }
        if (str == null) {
            this.dialogEmoticonsMap.delete(j);
        } else {
            this.dialogEmoticonsMap.put(j, str);
        }
        if (j >= 0) {
            TLRPC$UserFull userFull = getMessagesController().getUserFull(j);
            if (userFull != null) {
                userFull.theme_emoticon = str;
                getMessagesStorage().updateUserInfo(userFull, true);
            }
        } else {
            TLRPC$ChatFull chatFull = getMessagesController().getChatFull(-j);
            if (chatFull != null) {
                chatFull.theme_emoticon = str;
                getMessagesStorage().updateChatInfo(chatFull, true);
            }
        }
        SharedPreferences.Editor edit = getEmojiSharedPreferences().edit();
        edit.putString("chatTheme_" + this.currentAccount + "_" + j, str).apply();
        if (z) {
            TLRPC$TL_messages_setChatTheme tLRPC$TL_messages_setChatTheme = new TLRPC$TL_messages_setChatTheme();
            if (str == null) {
                str = "";
            }
            tLRPC$TL_messages_setChatTheme.emoticon = str;
            tLRPC$TL_messages_setChatTheme.peer = getMessagesController().getInputPeer(j);
            getConnectionsManager().sendRequest(tLRPC$TL_messages_setChatTheme, null);
        }
    }

    public EmojiThemes getDialogTheme(long j) {
        String str = this.dialogEmoticonsMap.get(j);
        if (str == null) {
            SharedPreferences emojiSharedPreferences = getEmojiSharedPreferences();
            str = emojiSharedPreferences.getString("chatTheme_" + this.currentAccount + "_" + j, null);
            this.dialogEmoticonsMap.put(j, str);
        }
        return getTheme(str);
    }

    public EmojiThemes getTheme(String str) {
        List<EmojiThemes> list;
        if (str == null || (list = this.allChatThemes) == null) {
            return null;
        }
        for (EmojiThemes emojiThemes : list) {
            if (str.equals(emojiThemes.getEmoticon())) {
                return emojiThemes;
            }
        }
        return null;
    }

    public void saveChatWallpaper(long j, TLRPC$WallPaper tLRPC$WallPaper) {
        if (tLRPC$WallPaper != null) {
            if (tLRPC$WallPaper.document == null) {
                return;
            }
            SerializedData serializedData = new SerializedData(tLRPC$WallPaper.getObjectSize());
            tLRPC$WallPaper.serializeToStream(serializedData);
            String bytesToHex = Utilities.bytesToHex(serializedData.toByteArray());
            SharedPreferences.Editor edit = getEmojiSharedPreferences().edit();
            edit.putString("chatWallpaper_" + this.currentAccount + "_" + j, bytesToHex).apply();
            return;
        }
        SharedPreferences.Editor edit2 = getEmojiSharedPreferences().edit();
        edit2.remove("chatWallpaper_" + this.currentAccount + "_" + j).apply();
    }

    public TLRPC$WallPaper getDialogWallpaper(long j) {
        if (j >= 0) {
            TLRPC$UserFull userFull = getMessagesController().getUserFull(j);
            if (userFull != null) {
                return userFull.wallpaper;
            }
        } else {
            TLRPC$ChatFull chatFull = getMessagesController().getChatFull(-j);
            if (chatFull != null) {
                return chatFull.wallpaper;
            }
        }
        SharedPreferences emojiSharedPreferences = getEmojiSharedPreferences();
        String string = emojiSharedPreferences.getString("chatWallpaper_" + this.currentAccount + "_" + j, null);
        if (string != null) {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
            try {
                return TLRPC$WallPaper.TLdeserialize(serializedData, serializedData.readInt32(true), true);
            } catch (Throwable th) {
                FileLog.m102e(th);
            }
        }
        return null;
    }

    public void preloadAllWallpaperImages(boolean z) {
        List<EmojiThemes> list = this.allChatThemes;
        if (list != null) {
            for (EmojiThemes emojiThemes : list) {
                TLRPC$TL_theme tlTheme = emojiThemes.getTlTheme(z ? 1 : 0);
                if (tlTheme != null && !getPatternFile(tlTheme.f1739id).exists()) {
                    emojiThemes.loadWallpaper(z ? 1 : 0, null);
                }
            }
        }
    }

    public void preloadAllWallpaperThumbs(boolean z) {
        List<EmojiThemes> list = this.allChatThemes;
        if (list != null) {
            for (EmojiThemes emojiThemes : list) {
                TLRPC$TL_theme tlTheme = emojiThemes.getTlTheme(z ? 1 : 0);
                if (tlTheme != null) {
                    if (!this.themeIdWallpaperThumbMap.containsKey(Long.valueOf(tlTheme.f1739id))) {
                        emojiThemes.loadWallpaperThumb(z ? 1 : 0, new ResultCallback() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda12
                            @Override // org.telegram.tgnet.ResultCallback
                            public final void onComplete(Object obj) {
                                ChatThemeController.this.lambda$preloadAllWallpaperThumbs$4((Pair) obj);
                            }

                            @Override // org.telegram.tgnet.ResultCallback
                            public /* synthetic */ void onError(TLRPC$TL_error tLRPC$TL_error) {
                                ResultCallback.CC.$default$onError(this, tLRPC$TL_error);
                            }
                        });
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadAllWallpaperThumbs$4(Pair pair) {
        if (pair != null) {
            this.themeIdWallpaperThumbMap.put((Long) pair.first, (Bitmap) pair.second);
        }
    }

    public void clearWallpaperThumbImages() {
        this.themeIdWallpaperThumbMap.clear();
    }

    public void getWallpaperBitmap(long j, final ResultCallback<Bitmap> resultCallback) {
        if (this.themesHash == 0) {
            resultCallback.onComplete(null);
            return;
        }
        final File patternFile = getPatternFile(j);
        chatThemeQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ChatThemeController.lambda$getWallpaperBitmap$6(patternFile, resultCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getWallpaperBitmap$6(File file, final ResultCallback resultCallback) {
        final Bitmap bitmap = null;
        try {
            if (file.exists()) {
                bitmap = BitmapFactory.decodeFile(file.getAbsolutePath());
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        if (resultCallback != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ResultCallback.this.onComplete(bitmap);
                }
            });
        }
    }

    private File getPatternFile(long j) {
        return new File(ApplicationLoader.getFilesDirFixed(), String.format(Locale.US, "%d_%d.jpg", Long.valueOf(j), Long.valueOf(this.themesHash)));
    }

    public void saveWallpaperBitmap(final Bitmap bitmap, long j) {
        final File patternFile = getPatternFile(j);
        chatThemeQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ChatThemeController.lambda$saveWallpaperBitmap$7(patternFile, bitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveWallpaperBitmap$7(File file, Bitmap bitmap) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 87, fileOutputStream);
            fileOutputStream.close();
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public Bitmap getWallpaperThumbBitmap(long j) {
        return this.themeIdWallpaperThumbMap.get(Long.valueOf(j));
    }

    public void clearCache() {
        this.themesHash = 0L;
        this.lastReloadTimeMs = 0L;
        getSharedPreferences().edit().clear().apply();
    }

    public void processUpdate(TLRPC$TL_updatePeerWallpaper tLRPC$TL_updatePeerWallpaper) {
        if (tLRPC$TL_updatePeerWallpaper.peer instanceof TLRPC$TL_peerUser) {
            final TLRPC$UserFull userFull = getMessagesController().getUserFull(tLRPC$TL_updatePeerWallpaper.peer.user_id);
            if (userFull == null || wallpaperEquals(userFull.wallpaper, tLRPC$TL_updatePeerWallpaper.wallpaper)) {
                return;
            }
            final long j = userFull.f1752id;
            if ((tLRPC$TL_updatePeerWallpaper.flags & 1) != 0) {
                userFull.wallpaper_overridden = tLRPC$TL_updatePeerWallpaper.wallpaper_overridden;
                userFull.wallpaper = tLRPC$TL_updatePeerWallpaper.wallpaper;
                userFull.flags |= ConnectionsManager.FileTypePhoto;
            } else {
                userFull.wallpaper_overridden = false;
                userFull.wallpaper = null;
                userFull.flags &= -16777217;
            }
            getMessagesStorage().updateUserInfo(userFull, false);
            saveChatWallpaper(j, userFull.wallpaper);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ChatThemeController.this.lambda$processUpdate$8(j, userFull);
                }
            });
            return;
        }
        final TLRPC$ChatFull chatFull = getMessagesController().getChatFull(-DialogObject.getPeerDialogId(tLRPC$TL_updatePeerWallpaper.peer));
        if (chatFull == null || wallpaperEquals(chatFull.wallpaper, tLRPC$TL_updatePeerWallpaper.wallpaper)) {
            return;
        }
        long j2 = -chatFull.f1603id;
        if ((tLRPC$TL_updatePeerWallpaper.flags & 1) != 0) {
            chatFull.wallpaper = tLRPC$TL_updatePeerWallpaper.wallpaper;
            chatFull.flags2 |= 128;
        } else {
            chatFull.wallpaper = null;
            chatFull.flags2 &= -129;
        }
        getMessagesStorage().updateChatInfo(chatFull, false);
        saveChatWallpaper(j2, chatFull.wallpaper);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ChatThemeController.this.lambda$processUpdate$9(chatFull);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdate$8(long j, TLRPC$UserFull tLRPC$UserFull) {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.userInfoDidLoad, Long.valueOf(j), tLRPC$UserFull);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdate$9(TLRPC$ChatFull tLRPC$ChatFull) {
        NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
        int i = NotificationCenter.chatInfoDidLoad;
        Boolean bool = Boolean.FALSE;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i, tLRPC$ChatFull, 0, bool, bool);
    }

    public static boolean wallpaperEquals(TLRPC$WallPaper tLRPC$WallPaper, TLRPC$WallPaper tLRPC$WallPaper2) {
        if (tLRPC$WallPaper == null && tLRPC$WallPaper2 == null) {
            return true;
        }
        if ((tLRPC$WallPaper instanceof TLRPC$TL_wallPaper) && (tLRPC$WallPaper2 instanceof TLRPC$TL_wallPaper)) {
            return tLRPC$WallPaper.f1759id == tLRPC$WallPaper2.f1759id;
        } else if ((tLRPC$WallPaper instanceof TLRPC$TL_wallPaperNoFile) && (tLRPC$WallPaper2 instanceof TLRPC$TL_wallPaperNoFile)) {
            if (tLRPC$WallPaper.settings == null || tLRPC$WallPaper2.settings == null) {
                return tLRPC$WallPaper.f1759id == tLRPC$WallPaper2.f1759id;
            }
            return TextUtils.equals(getWallpaperEmoticon(tLRPC$WallPaper), getWallpaperEmoticon(tLRPC$WallPaper2));
        } else {
            return false;
        }
    }

    public static String getWallpaperEmoticon(TLRPC$WallPaper tLRPC$WallPaper) {
        if (tLRPC$WallPaper != null) {
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings = tLRPC$WallPaper.settings;
            return (tLRPC$WallPaperSettings == null || TextUtils.isEmpty(tLRPC$WallPaperSettings.emoticon)) ? "" : tLRPC$WallPaper.settings.emoticon;
        }
        return null;
    }

    public static boolean isNotEmoticonWallpaper(TLRPC$WallPaper tLRPC$WallPaper) {
        String wallpaperEmoticon = getWallpaperEmoticon(tLRPC$WallPaper);
        return wallpaperEmoticon != null && wallpaperEmoticon.length() == 0;
    }

    public void clearWallpaper(long j, boolean z) {
        clearWallpaper(j, z, false);
    }

    public void clearWallpaper(long j, boolean z, boolean z2) {
        TLRPC$TL_messages_setChatWallPaper tLRPC$TL_messages_setChatWallPaper = new TLRPC$TL_messages_setChatWallPaper();
        if (j >= 0) {
            tLRPC$TL_messages_setChatWallPaper.peer = MessagesController.getInputPeer(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)));
            tLRPC$TL_messages_setChatWallPaper.revert = z2;
            if (!z2) {
                TLRPC$UserFull userFull = getMessagesController().getUserFull(j);
                if (userFull != null) {
                    userFull.wallpaper = null;
                    userFull.flags &= -16777217;
                    getMessagesStorage().updateUserInfo(userFull, false);
                }
                saveChatWallpaper(j, null);
                if (z) {
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.userInfoDidLoad, Long.valueOf(j), userFull);
                }
            }
        } else {
            long j2 = -j;
            tLRPC$TL_messages_setChatWallPaper.peer = MessagesController.getInputPeer(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j2)));
            TLRPC$ChatFull chatFull = getMessagesController().getChatFull(j2);
            if (chatFull != null) {
                chatFull.wallpaper = null;
                chatFull.flags2 &= -129;
                getMessagesStorage().updateChatInfo(chatFull, false);
            }
            saveChatWallpaper(j, null);
            if (z) {
                NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
                int i = NotificationCenter.chatInfoDidLoad;
                Boolean bool = Boolean.FALSE;
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i, chatFull, 0, bool, bool);
            }
        }
        getConnectionsManager().sendRequest(tLRPC$TL_messages_setChatWallPaper, new RequestDelegate() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChatThemeController.lambda$clearWallpaper$10(tLObject, tLRPC$TL_error);
            }
        });
    }

    public int setWallpaperToPeer(final long j, final String str, Theme.OverrideWallpaperInfo overrideWallpaperInfo, MessageObject messageObject, final Runnable runnable) {
        final boolean z;
        TLRPC$ChatFull chatFull;
        TLRPC$UserFull tLRPC$UserFull;
        TLRPC$WallPaper tLRPC$WallPaper;
        boolean z2;
        String str2;
        TLRPC$TL_messages_setChatWallPaper tLRPC$TL_messages_setChatWallPaper = new TLRPC$TL_messages_setChatWallPaper();
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            tLRPC$TL_messages_setChatWallPaper.peer = MessagesController.getInputPeer(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)));
        } else {
            tLRPC$TL_messages_setChatWallPaper.peer = MessagesController.getInputPeer(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j)));
        }
        tLRPC$TL_messages_setChatWallPaper.for_both = overrideWallpaperInfo.forBoth;
        if (messageObject != null && (messageObject.messageOwner.action instanceof TLRPC$TL_messageActionSetChatWallPaper)) {
            tLRPC$TL_messages_setChatWallPaper.flags |= 2;
            tLRPC$TL_messages_setChatWallPaper.f1716id = messageObject.getId();
            if (i >= 0) {
                tLRPC$UserFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
                chatFull = null;
            } else {
                chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
                tLRPC$UserFull = null;
            }
            TLRPC$TL_messageActionSetChatWallPaper tLRPC$TL_messageActionSetChatWallPaper = (TLRPC$TL_messageActionSetChatWallPaper) messageObject.messageOwner.action;
            TLRPC$TL_wallPaper tLRPC$TL_wallPaper = new TLRPC$TL_wallPaper();
            TLRPC$WallPaper tLRPC$WallPaper2 = tLRPC$TL_messageActionSetChatWallPaper.wallpaper;
            tLRPC$TL_wallPaper.f1759id = tLRPC$WallPaper2.f1759id;
            tLRPC$TL_wallPaper.document = tLRPC$WallPaper2.document;
            TLRPC$TL_wallPaperSettings tLRPC$TL_wallPaperSettings = new TLRPC$TL_wallPaperSettings();
            tLRPC$TL_wallPaper.settings = tLRPC$TL_wallPaperSettings;
            tLRPC$TL_wallPaperSettings.intensity = (int) (overrideWallpaperInfo.intensity * 100.0f);
            tLRPC$TL_wallPaperSettings.motion = overrideWallpaperInfo.isMotion;
            tLRPC$TL_wallPaperSettings.blur = overrideWallpaperInfo.isBlurred;
            tLRPC$TL_wallPaperSettings.background_color = overrideWallpaperInfo.color;
            tLRPC$TL_wallPaperSettings.second_background_color = overrideWallpaperInfo.gradientColor1;
            tLRPC$TL_wallPaperSettings.third_background_color = overrideWallpaperInfo.gradientColor2;
            tLRPC$TL_wallPaperSettings.fourth_background_color = overrideWallpaperInfo.gradientColor3;
            tLRPC$TL_wallPaperSettings.rotation = overrideWallpaperInfo.rotation;
            tLRPC$TL_wallPaper.uploadingImage = str;
            if (tLRPC$UserFull != null) {
                tLRPC$WallPaper = tLRPC$UserFull.wallpaper;
            } else {
                tLRPC$WallPaper = chatFull != null ? chatFull.wallpaper : null;
            }
            if (tLRPC$WallPaper != null && (str2 = tLRPC$WallPaper.uploadingImage) != null && str2.equals(str)) {
                tLRPC$TL_wallPaper.stripedThumb = tLRPC$WallPaper.stripedThumb;
            }
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings = tLRPC$TL_wallPaper.settings;
            int i2 = tLRPC$WallPaperSettings.flags | 1;
            tLRPC$WallPaperSettings.flags = i2;
            int i3 = i2 | 8;
            tLRPC$WallPaperSettings.flags = i3;
            int i4 = i3 | 16;
            tLRPC$WallPaperSettings.flags = i4;
            int i5 = i4 | 32;
            tLRPC$WallPaperSettings.flags = i5;
            tLRPC$WallPaperSettings.flags = i5 | 64;
            TLRPC$TL_wallPaper tLRPC$TL_wallPaper2 = new TLRPC$TL_wallPaper();
            TLRPC$WallPaper tLRPC$WallPaper3 = tLRPC$TL_messageActionSetChatWallPaper.wallpaper;
            tLRPC$TL_wallPaper2.pattern = tLRPC$WallPaper3.pattern;
            tLRPC$TL_wallPaper2.f1759id = tLRPC$WallPaper3.f1759id;
            tLRPC$TL_wallPaper2.document = tLRPC$WallPaper3.document;
            int i6 = tLRPC$WallPaper3.flags;
            tLRPC$TL_wallPaper2.flags = i6;
            tLRPC$TL_wallPaper2.creator = tLRPC$WallPaper3.creator;
            tLRPC$TL_wallPaper2.dark = tLRPC$WallPaper3.dark;
            tLRPC$TL_wallPaper2.isDefault = tLRPC$WallPaper3.isDefault;
            tLRPC$TL_wallPaper2.slug = tLRPC$WallPaper3.slug;
            TLRPC$ChatFull tLRPC$ChatFull = chatFull;
            tLRPC$TL_wallPaper2.access_hash = tLRPC$WallPaper3.access_hash;
            tLRPC$TL_wallPaper2.stripedThumb = tLRPC$WallPaper3.stripedThumb;
            tLRPC$TL_wallPaper2.settings = tLRPC$TL_wallPaper.settings;
            tLRPC$TL_wallPaper2.flags = i6 | 4;
            if (tLRPC$UserFull != null) {
                tLRPC$UserFull.wallpaper = tLRPC$TL_wallPaper2;
                tLRPC$UserFull.flags |= ConnectionsManager.FileTypePhoto;
                z2 = false;
                getMessagesStorage().updateUserInfo(tLRPC$UserFull, false);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.userInfoDidLoad, Long.valueOf(j), tLRPC$UserFull);
            } else {
                z2 = false;
                if (tLRPC$ChatFull != null) {
                    tLRPC$ChatFull.wallpaper = tLRPC$TL_wallPaper2;
                    tLRPC$ChatFull.flags2 |= 128;
                    getMessagesStorage().updateChatInfo(tLRPC$ChatFull, false);
                    NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
                    int i7 = NotificationCenter.chatInfoDidLoad;
                    Boolean bool = Boolean.FALSE;
                    notificationCenter.lambda$postNotificationNameOnUIThread$1(i7, tLRPC$ChatFull, 0, bool, bool);
                }
            }
            if (runnable != null) {
                runnable.run();
            }
            z = z2;
        } else {
            z = true;
            tLRPC$TL_messages_setChatWallPaper.flags |= 1;
            tLRPC$TL_messages_setChatWallPaper.wallpaper = MessagesController.getInputWallpaper(overrideWallpaperInfo);
        }
        tLRPC$TL_messages_setChatWallPaper.flags |= 4;
        tLRPC$TL_messages_setChatWallPaper.settings = MessagesController.getWallpaperSetting(overrideWallpaperInfo);
        return ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_setChatWallPaper, new RequestDelegate() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChatThemeController.this.lambda$setWallpaperToPeer$12(j, z, str, runnable, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setWallpaperToPeer$12(final long j, final boolean z, final String str, final Runnable runnable, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ChatThemeController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ChatThemeController.this.lambda$setWallpaperToPeer$11(tLObject, j, z, str, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setWallpaperToPeer$11(TLObject tLObject, long j, boolean z, String str, Runnable runnable) {
        TLRPC$ChatFull chatFull;
        TLRPC$UserFull tLRPC$UserFull;
        String str2;
        if (tLObject instanceof TLRPC$Updates) {
            TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
            TLRPC$WallPaper tLRPC$WallPaper = null;
            if (j >= 0) {
                tLRPC$UserFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
                chatFull = null;
            } else {
                chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
                tLRPC$UserFull = null;
            }
            if (tLRPC$UserFull != null) {
                tLRPC$WallPaper = tLRPC$UserFull.wallpaper;
            } else if (chatFull != null) {
                tLRPC$WallPaper = chatFull.wallpaper;
            }
            int i = 0;
            while (true) {
                if (i >= tLRPC$Updates.updates.size()) {
                    break;
                }
                if (tLRPC$Updates.updates.get(i) instanceof TLRPC$TL_updateNewMessage) {
                    TLRPC$MessageAction tLRPC$MessageAction = ((TLRPC$TL_updateNewMessage) tLRPC$Updates.updates.get(i)).message.action;
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionSetChatWallPaper) {
                        if (z) {
                            TLRPC$TL_messageActionSetChatWallPaper tLRPC$TL_messageActionSetChatWallPaper = (TLRPC$TL_messageActionSetChatWallPaper) tLRPC$MessageAction;
                            tLRPC$TL_messageActionSetChatWallPaper.wallpaper.uploadingImage = str;
                            if (tLRPC$WallPaper != null && (str2 = tLRPC$WallPaper.uploadingImage) != null && str2.equals(str)) {
                                tLRPC$TL_messageActionSetChatWallPaper.wallpaper.stripedThumb = tLRPC$WallPaper.stripedThumb;
                            }
                            if (tLRPC$UserFull != null) {
                                TLRPC$WallPaper tLRPC$WallPaper2 = tLRPC$TL_messageActionSetChatWallPaper.wallpaper;
                                tLRPC$UserFull.wallpaper = tLRPC$WallPaper2;
                                tLRPC$UserFull.flags |= ConnectionsManager.FileTypePhoto;
                                saveChatWallpaper(j, tLRPC$WallPaper2);
                                getMessagesStorage().updateUserInfo(tLRPC$UserFull, false);
                                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.userInfoDidLoad, Long.valueOf(j), tLRPC$UserFull);
                            } else if (chatFull != null) {
                                TLRPC$WallPaper tLRPC$WallPaper3 = tLRPC$TL_messageActionSetChatWallPaper.wallpaper;
                                chatFull.wallpaper = tLRPC$WallPaper3;
                                chatFull.flags2 |= 128;
                                saveChatWallpaper(j, tLRPC$WallPaper3);
                                getMessagesStorage().updateChatInfo(chatFull, false);
                                NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
                                int i2 = NotificationCenter.chatInfoDidLoad;
                                Boolean bool = Boolean.FALSE;
                                notificationCenter.lambda$postNotificationNameOnUIThread$1(i2, chatFull, 0, bool, bool);
                            }
                        }
                    }
                }
                i++;
            }
            MessagesController.getInstance(this.currentAccount).processUpdateArray(tLRPC$Updates.updates, tLRPC$Updates.users, tLRPC$Updates.chats, false, tLRPC$Updates.date);
            if (runnable != null) {
                runnable.run();
            }
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.wallpaperSettedToUser, new Object[0]);
        }
    }
}
