package org.telegram.messenger;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import android.util.Pair;
import android.util.SparseArray;
import androidx.collection.LongSparseArray;
import androidx.core.content.p009pm.ShortcutManagerCompat;
import com.android.billingclient.api.ProductDetails;
import com.google.android.gms.common.ConnectionResult;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLiteException;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationBadge;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.ringtone.RingtoneDataStore;
import org.telegram.messenger.ringtone.RingtoneUploader;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.EmojiThemes;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.ChatThemeBottomSheet;
import org.telegram.p043ui.Components.QuoteSpan;
import org.telegram.p043ui.Components.StickerSetBulletinLayout;
import org.telegram.p043ui.Components.StickersArchiveAlert;
import org.telegram.p043ui.Components.TextStyleSpan;
import org.telegram.p043ui.Components.URLSpanReplacement;
import org.telegram.p043ui.Components.URLSpanUserMention;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$AttachMenuBots;
import org.telegram.tgnet.TLRPC$AttachMenuPeerType;
import org.telegram.tgnet.TLRPC$BotInfo;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$DraftMessage;
import org.telegram.tgnet.TLRPC$EmojiKeyword;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$InputReplyTo;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$InputUser;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageReplyHeader;
import org.telegram.tgnet.TLRPC$MessagesFilter;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
import org.telegram.tgnet.TLRPC$TL_account_emojiStatuses;
import org.telegram.tgnet.TLRPC$TL_account_emojiStatusesNotModified;
import org.telegram.tgnet.TLRPC$TL_account_getDefaultEmojiStatuses;
import org.telegram.tgnet.TLRPC$TL_account_getRecentEmojiStatuses;
import org.telegram.tgnet.TLRPC$TL_account_saveRingtone;
import org.telegram.tgnet.TLRPC$TL_account_savedRingtoneConverted;
import org.telegram.tgnet.TLRPC$TL_attachMenuBot;
import org.telegram.tgnet.TLRPC$TL_attachMenuBotIcon;
import org.telegram.tgnet.TLRPC$TL_attachMenuBot_layer162;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots;
import org.telegram.tgnet.TLRPC$TL_attachMenuBotsBot;
import org.telegram.tgnet.TLRPC$TL_attachMenuBotsNotModified;
import org.telegram.tgnet.TLRPC$TL_attachMenuPeerTypeBotPM;
import org.telegram.tgnet.TLRPC$TL_attachMenuPeerTypeBroadcast;
import org.telegram.tgnet.TLRPC$TL_attachMenuPeerTypeChat;
import org.telegram.tgnet.TLRPC$TL_attachMenuPeerTypePM;
import org.telegram.tgnet.TLRPC$TL_attachMenuPeerTypeSameBotPM;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_channels_getMessages;
import org.telegram.tgnet.TLRPC$TL_contacts_getTopPeers;
import org.telegram.tgnet.TLRPC$TL_contacts_resetTopPeerRating;
import org.telegram.tgnet.TLRPC$TL_contacts_topPeers;
import org.telegram.tgnet.TLRPC$TL_contacts_topPeersDisabled;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAnimated;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_documentAttributeCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_documentAttributeSticker;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_documentEmpty;
import org.telegram.tgnet.TLRPC$TL_draftMessage;
import org.telegram.tgnet.TLRPC$TL_draftMessageEmpty;
import org.telegram.tgnet.TLRPC$TL_emojiKeyword;
import org.telegram.tgnet.TLRPC$TL_emojiKeywordDeleted;
import org.telegram.tgnet.TLRPC$TL_emojiKeywordsDifference;
import org.telegram.tgnet.TLRPC$TL_emojiList;
import org.telegram.tgnet.TLRPC$TL_emojiStatus;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_help_getPremiumPromo;
import org.telegram.tgnet.TLRPC$TL_help_premiumPromo;
import org.telegram.tgnet.TLRPC$TL_inputDocument;
import org.telegram.tgnet.TLRPC$TL_inputMessageEntityMentionName;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterDocument;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterGif;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterMusic;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterPhotoVideo;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterPhotos;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterPinned;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterRoundVoice;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterUrl;
import org.telegram.tgnet.TLRPC$TL_inputMessagesFilterVideo;
import org.telegram.tgnet.TLRPC$TL_inputReplyToMessage;
import org.telegram.tgnet.TLRPC$TL_inputReplyToStory;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetAnimatedEmoji;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetDice;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetEmojiDefaultStatuses;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetEmojiDefaultTopicIcons;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetEmojiGenericAnimations;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetEmpty;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetID;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetPremiumGifts;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetShortName;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageActionGameScore;
import org.telegram.tgnet.TLRPC$TL_messageActionHistoryClear;
import org.telegram.tgnet.TLRPC$TL_messageActionPaymentSent;
import org.telegram.tgnet.TLRPC$TL_messageActionPinMessage;
import org.telegram.tgnet.TLRPC$TL_messageEmpty;
import org.telegram.tgnet.TLRPC$TL_messageEntityBlockquote;
import org.telegram.tgnet.TLRPC$TL_messageEntityBold;
import org.telegram.tgnet.TLRPC$TL_messageEntityCode;
import org.telegram.tgnet.TLRPC$TL_messageEntityCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_messageEntityEmail;
import org.telegram.tgnet.TLRPC$TL_messageEntityItalic;
import org.telegram.tgnet.TLRPC$TL_messageEntityMentionName;
import org.telegram.tgnet.TLRPC$TL_messageEntityPre;
import org.telegram.tgnet.TLRPC$TL_messageEntitySpoiler;
import org.telegram.tgnet.TLRPC$TL_messageEntityStrike;
import org.telegram.tgnet.TLRPC$TL_messageEntityTextUrl;
import org.telegram.tgnet.TLRPC$TL_messageEntityUnderline;
import org.telegram.tgnet.TLRPC$TL_messageEntityUrl;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_messageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messageReplyHeader;
import org.telegram.tgnet.TLRPC$TL_messageReplyStoryHeader;
import org.telegram.tgnet.TLRPC$TL_messageService;
import org.telegram.tgnet.TLRPC$TL_message_secret;
import org.telegram.tgnet.TLRPC$TL_messages_allStickers;
import org.telegram.tgnet.TLRPC$TL_messages_archivedStickers;
import org.telegram.tgnet.TLRPC$TL_messages_availableReactions;
import org.telegram.tgnet.TLRPC$TL_messages_availableReactionsNotModified;
import org.telegram.tgnet.TLRPC$TL_messages_channelMessages;
import org.telegram.tgnet.TLRPC$TL_messages_faveSticker;
import org.telegram.tgnet.TLRPC$TL_messages_favedStickers;
import org.telegram.tgnet.TLRPC$TL_messages_featuredStickers;
import org.telegram.tgnet.TLRPC$TL_messages_getAllStickers;
import org.telegram.tgnet.TLRPC$TL_messages_getArchivedStickers;
import org.telegram.tgnet.TLRPC$TL_messages_getAttachMenuBots;
import org.telegram.tgnet.TLRPC$TL_messages_getAvailableReactions;
import org.telegram.tgnet.TLRPC$TL_messages_getEmojiStickers;
import org.telegram.tgnet.TLRPC$TL_messages_getFeaturedEmojiStickers;
import org.telegram.tgnet.TLRPC$TL_messages_getFeaturedStickers;
import org.telegram.tgnet.TLRPC$TL_messages_getMaskStickers;
import org.telegram.tgnet.TLRPC$TL_messages_getMessages;
import org.telegram.tgnet.TLRPC$TL_messages_getRecentReactions;
import org.telegram.tgnet.TLRPC$TL_messages_getScheduledMessages;
import org.telegram.tgnet.TLRPC$TL_messages_getSearchCounters;
import org.telegram.tgnet.TLRPC$TL_messages_getStickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_getStickers;
import org.telegram.tgnet.TLRPC$TL_messages_getTopReactions;
import org.telegram.tgnet.TLRPC$TL_messages_installStickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_messages;
import org.telegram.tgnet.TLRPC$TL_messages_messagesSlice;
import org.telegram.tgnet.TLRPC$TL_messages_reactions;
import org.telegram.tgnet.TLRPC$TL_messages_reactionsNotModified;
import org.telegram.tgnet.TLRPC$TL_messages_readFeaturedStickers;
import org.telegram.tgnet.TLRPC$TL_messages_recentStickers;
import org.telegram.tgnet.TLRPC$TL_messages_saveDraft;
import org.telegram.tgnet.TLRPC$TL_messages_saveGif;
import org.telegram.tgnet.TLRPC$TL_messages_saveRecentSticker;
import org.telegram.tgnet.TLRPC$TL_messages_savedGifs;
import org.telegram.tgnet.TLRPC$TL_messages_search;
import org.telegram.tgnet.TLRPC$TL_messages_searchCounter;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSetInstallResultArchive;
import org.telegram.tgnet.TLRPC$TL_messages_stickers;
import org.telegram.tgnet.TLRPC$TL_messages_toggleStickerSets;
import org.telegram.tgnet.TLRPC$TL_messages_uninstallStickerSet;
import org.telegram.tgnet.TLRPC$TL_peerChat;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_premiumSubscriptionOption;
import org.telegram.tgnet.TLRPC$TL_stickerKeyword;
import org.telegram.tgnet.TLRPC$TL_stickerPack;
import org.telegram.tgnet.TLRPC$TL_stickerSetFullCovered;
import org.telegram.tgnet.TLRPC$TL_theme;
import org.telegram.tgnet.TLRPC$TL_topPeer;
import org.telegram.tgnet.TLRPC$TL_topPeerCategoryBotsInline;
import org.telegram.tgnet.TLRPC$TL_topPeerCategoryCorrespondents;
import org.telegram.tgnet.TLRPC$TL_topPeerCategoryPeers;
import org.telegram.tgnet.TLRPC$TL_updateBotCommands;
import org.telegram.tgnet.TLRPC$Theme;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$Vector;
import org.telegram.tgnet.TLRPC$messages_Messages;
import org.telegram.tgnet.TLRPC$messages_StickerSet;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class MediaDataController extends BaseController {
    public static final String ATTACH_MENU_BOT_ANIMATED_ICON_KEY = "android_animated";
    public static final String ATTACH_MENU_BOT_COLOR_DARK_ICON = "dark_icon";
    public static final String ATTACH_MENU_BOT_COLOR_DARK_TEXT = "dark_text";
    public static final String ATTACH_MENU_BOT_COLOR_LIGHT_ICON = "light_icon";
    public static final String ATTACH_MENU_BOT_COLOR_LIGHT_TEXT = "light_text";
    public static final String ATTACH_MENU_BOT_PLACEHOLDER_STATIC_KEY = "placeholder_static";
    public static final String ATTACH_MENU_BOT_SIDE_MENU = "android_side_menu_static";
    public static final String ATTACH_MENU_BOT_SIDE_MENU_ICON_KEY = "android_side_menu_static";
    public static final String ATTACH_MENU_BOT_STATIC_ICON_KEY = "default_static";
    public static final int MEDIA_AUDIO = 2;
    public static final int MEDIA_FILE = 1;
    public static final int MEDIA_GIF = 5;
    public static final int MEDIA_MUSIC = 4;
    public static final int MEDIA_PHOTOS_ONLY = 6;
    public static final int MEDIA_PHOTOVIDEO = 0;
    public static final int MEDIA_STORIES = 8;
    public static final int MEDIA_TYPES_COUNT = 8;
    public static final int MEDIA_URL = 3;
    public static final int MEDIA_VIDEOS_ONLY = 7;
    public static final int TYPE_EMOJI = 4;
    public static final int TYPE_EMOJIPACKS = 5;
    public static final int TYPE_FAVE = 2;
    public static final int TYPE_FEATURED = 3;
    public static final int TYPE_FEATURED_EMOJIPACKS = 6;
    public static final int TYPE_GREETINGS = 3;
    public static final int TYPE_IMAGE = 0;
    public static final int TYPE_MASK = 1;
    public static final int TYPE_PREMIUM_STICKERS = 7;
    private static RectF bitmapRect;
    private static Comparator<TLRPC$MessageEntity> entityComparator;
    private static Paint erasePaint;
    private static Paint roundPaint;
    private static Path roundPath;
    private HashMap<String, ArrayList<TLRPC$Document>> allStickers;
    private HashMap<String, ArrayList<TLRPC$Document>> allStickersFeatured;
    private int[] archivedStickersCount;
    private TLRPC$TL_attachMenuBots attachMenuBots;
    private LongSparseArray<ArrayList<TLRPC$Message>> botDialogKeyboards;
    private HashMap<String, TLRPC$BotInfo> botInfos;
    private HashMap<MessagesStorage.TopicKey, TLRPC$Message> botKeyboards;
    private LongSparseArray<MessagesStorage.TopicKey> botKeyboardsByMids;
    private boolean cleanedupStickerSetCache;
    private HashMap<String, Boolean> currentFetchingEmoji;
    public final ArrayList<ChatThemeBottomSheet.ChatThemeItem> defaultEmojiThemes;
    private LongSparseArray<String> diceEmojiStickerSetsById;
    private HashMap<String, TLRPC$TL_messages_stickerSet> diceStickerSetsByEmoji;
    private String doubleTapReaction;
    private LongSparseArray<SparseArray<TLRPC$Message>> draftMessages;
    private SharedPreferences draftPreferences;
    private LongSparseArray<SparseArray<TLRPC$DraftMessage>> drafts;
    private LongSparseArray<Integer> draftsFolderIds;
    private ArrayList<TLRPC$EmojiStatus>[] emojiStatuses;
    private Long[] emojiStatusesFetchDate;
    private boolean[] emojiStatusesFetching;
    private boolean[] emojiStatusesFromCacheFetched;
    private long[] emojiStatusesHash;
    private List<TLRPC$TL_availableReaction> enabledReactionsList;
    private ArrayList<TLRPC$StickerSetCovered>[] featuredStickerSets;
    private LongSparseArray<TLRPC$StickerSetCovered>[] featuredStickerSetsById;
    private boolean[] featuredStickersLoaded;
    private TLRPC$Document greetingsSticker;
    public TLRPC$TL_emojiList groupAvatarConstructorDefault;
    private LongSparseArray<TLRPC$TL_messages_stickerSet> groupStickerSets;
    public ArrayList<TLRPC$TL_topPeer> hints;
    private boolean inTransaction;
    public ArrayList<TLRPC$TL_topPeer> inlineBots;
    private ArrayList<Long> installedForceStickerSetsById;
    private LongSparseArray<TLRPC$TL_messages_stickerSet> installedStickerSetsById;
    private boolean isLoadingMenuBots;
    private boolean isLoadingPremiumPromo;
    private boolean isLoadingReactions;
    private long lastDialogId;
    private int lastGuid;
    private long lastMergeDialogId;
    private int lastReplyMessageId;
    private int lastReqId;
    private int lastReturnedNum;
    private TLRPC$Chat lastSearchChat;
    private String lastSearchQuery;
    private TLRPC$User lastSearchUser;
    private int[] loadDate;
    private int[] loadFeaturedDate;
    private long[] loadFeaturedHash;
    public boolean loadFeaturedPremium;
    private long[] loadHash;
    boolean loaded;
    boolean loading;
    private boolean loadingDefaultTopicIcons;
    private HashSet<String> loadingDiceStickerSets;
    private boolean loadingDrafts;
    private boolean[] loadingFeaturedStickers;
    private boolean loadingGenericAnimations;
    private boolean loadingMoreSearchMessages;
    private LongSparseArray<Boolean> loadingPinnedMessages;
    private boolean loadingPremiumGiftStickers;
    private boolean loadingRecentGifs;
    boolean loadingRecentReactions;
    private boolean[] loadingRecentStickers;
    private final HashMap<TLRPC$InputStickerSet, ArrayList<Utilities.Callback2<Boolean, TLRPC$TL_messages_stickerSet>>> loadingStickerSets;
    private boolean[] loadingStickers;
    private int menuBotsUpdateDate;
    private long menuBotsUpdateHash;
    private boolean menuBotsUpdatedLocal;
    private int mergeReqId;
    private int[] messagesSearchCount;
    private boolean[] messagesSearchEndReached;
    public final ArrayList<TLRPC$Document> premiumPreviewStickers;
    private TLRPC$TL_help_premiumPromo premiumPromo;
    private int premiumPromoUpdateDate;
    boolean previewStickersLoading;
    public TLRPC$TL_emojiList profileAvatarConstructorDefault;
    private boolean reactionsCacheGenerated;
    private List<TLRPC$TL_availableReaction> reactionsList;
    private HashMap<String, TLRPC$TL_availableReaction> reactionsMap;
    private int reactionsUpdateDate;
    private int reactionsUpdateHash;
    private ArrayList<Long>[] readingStickerSets;
    private ArrayList<TLRPC$Document> recentGifs;
    private boolean recentGifsLoaded;
    ArrayList<TLRPC$Reaction> recentReactions;
    private ArrayList<TLRPC$Document>[] recentStickers;
    private boolean[] recentStickersLoaded;
    private LongSparseArray<Runnable> removingStickerSetsUndos;
    public TLRPC$TL_emojiList replyIconsDefault;
    private int reqId;
    public final RingtoneDataStore ringtoneDataStore;
    public HashMap<String, RingtoneUploader> ringtoneUploaderHashMap;
    private Runnable[] scheduledLoadStickers;
    private ArrayList<MessageObject> searchResultMessages;
    private SparseArray<MessageObject>[] searchResultMessagesMap;
    private TLRPC$TL_messages_stickerSet stickerSetDefaultStatuses;
    private ArrayList<TLRPC$TL_messages_stickerSet>[] stickerSets;
    private LongSparseArray<TLRPC$TL_messages_stickerSet> stickerSetsById;
    private ConcurrentHashMap<String, TLRPC$TL_messages_stickerSet> stickerSetsByName;
    private LongSparseArray<String> stickersByEmoji;
    private LongSparseArray<TLRPC$Document>[] stickersByIds;
    private boolean[] stickersLoaded;
    ArrayList<TLRPC$Reaction> topReactions;
    private boolean triedLoadingEmojipacks;
    private ArrayList<Long> uninstalledForceStickerSetsById;
    private ArrayList<Long>[] unreadStickerSets;
    private HashMap<String, ArrayList<TLRPC$Message>> verifyingMessages;
    private static Pattern BOLD_PATTERN = Pattern.compile("\\*\\*(.+?)\\*\\*");
    private static Pattern ITALIC_PATTERN = Pattern.compile("__(.+?)__");
    private static Pattern SPOILER_PATTERN = Pattern.compile("\\|\\|(.+?)\\|\\|");
    private static Pattern STRIKE_PATTERN = Pattern.compile("~~(.+?)~~");
    public static String SHORTCUT_CATEGORY = "org.telegram.messenger.SHORTCUT_SHARE";
    private static volatile MediaDataController[] Instance = new MediaDataController[5];
    private static final Object[] lockObjects = new Object[5];

    /* loaded from: classes4.dex */
    public interface KeywordResultCallback {
        void run(ArrayList<KeywordResult> arrayList, String str);
    }

    public static long calcHash(long j, long j2) {
        long j3 = j ^ (j >> 21);
        long j4 = j3 ^ (j3 << 35);
        return (j4 ^ (j4 >> 4)) + j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$markFeaturedStickersAsRead$58(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$markFeaturedStickersByIdAsRead$59(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$removeInline$142(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$removePeer$143(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveDraft$177(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public ArrayList<MessageObject> loadPinnedMessages(long j, long j2, ArrayList<Integer> arrayList, boolean z) {
        return loadPinnedMessages(j, j2, arrayList, z, false, false);
    }

    public void searchMessagesInChat(String str, long j, long j2, int i, int i2, int i3, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat) {
        searchMessagesInChat(str, j, j2, i, i2, i3, tLRPC$User, tLRPC$Chat, false);
    }

    public void loadStickersByEmojiOrName(String str, boolean z, boolean z2) {
        loadStickersByEmojiOrName(str, z, z2, null);
    }

    public boolean isAnimatedEmoji(CharSequence charSequence) {
        Emoji.EmojiSpan emojiSpan;
        if (charSequence instanceof Spannable) {
            Spannable spannable = (Spannable) charSequence;
            Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spannable.getSpans(0, charSequence.length(), Emoji.EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length == 1 && (emojiSpan = emojiSpanArr[0]) != null && spannable.getSpanStart(emojiSpan) == 0 && spannable.getSpanEnd(emojiSpan) == charSequence.length()) {
                String replace = charSequence.toString().replace("️", "");
                return getEmojiAnimatedSticker(replace) != null || getMessagesController().diceEmojies.contains(replace);
            }
            return false;
        }
        return false;
    }

    public void loadSticker(final String str, final int i, final Callbacks$Callback1<TLRPC$Document> callbacks$Callback1) {
        TLRPC$Document tLRPC$Document = null;
        if (str == null || i < 0 || UserConfig.getActivatedAccountsCount() == 0) {
            callbacks$Callback1.invoke(null);
            return;
        }
        TLRPC$TL_messages_stickerSet stickerSetByName = getStickerSetByName(str);
        if (stickerSetByName == null) {
            stickerSetByName = getStickerSetByEmojiOrName(str);
        }
        if (stickerSetByName != null && stickerSetByName.documents.size() > i) {
            tLRPC$Document = stickerSetByName.documents.get(i);
        }
        if (stickerSetByName != null && tLRPC$Document != null) {
            callbacks$Callback1.invoke(tLRPC$Document);
        } else {
            loadStickersByEmojiOrName(str, false, stickerSetByName == null, new MessagesStorage.BooleanCallback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda168
                @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                public final void run(boolean z) {
                    MediaDataController.this.lambda$loadSticker$0(str, i, callbacks$Callback1, z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSticker$0(String str, int i, Callbacks$Callback1 callbacks$Callback1, boolean z) {
        if (z) {
            loadSticker(str, i, callbacks$Callback1);
        } else {
            callbacks$Callback1.invoke(null);
        }
    }

    private void searchMessagesInChat(String str, long j, long j2, int i, int i2, int i3, boolean z, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, boolean z2) {
        searchMessagesInChat(str, j, j2, i, i2, i3, z, tLRPC$User, tLRPC$Chat, z2, false);
    }

    private void processLoadedDiceStickers(String str, boolean z, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, boolean z2, int i) {
        processLoadedDiceStickers(str, z, tLRPC$TL_messages_stickerSet, z2, i, null);
    }

    static {
        for (int i = 0; i < 5; i++) {
            lockObjects[i] = new Object();
        }
        entityComparator = new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda160
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$static$149;
                lambda$static$149 = MediaDataController.lambda$static$149((TLRPC$MessageEntity) obj, (TLRPC$MessageEntity) obj2);
                return lambda$static$149;
            }
        };
    }

    public static MediaDataController getInstance(int i) {
        MediaDataController mediaDataController = Instance[i];
        if (mediaDataController == null) {
            synchronized (lockObjects) {
                mediaDataController = Instance[i];
                if (mediaDataController == null) {
                    MediaDataController[] mediaDataControllerArr = Instance;
                    MediaDataController mediaDataController2 = new MediaDataController(i);
                    mediaDataControllerArr[i] = mediaDataController2;
                    mediaDataController = mediaDataController2;
                }
            }
        }
        return mediaDataController;
    }

    public MediaDataController(int i) {
        super(i);
        String key;
        long longValue;
        SerializedData serializedData;
        boolean z;
        this.attachMenuBots = new TLRPC$TL_attachMenuBots();
        this.reactionsList = new ArrayList();
        this.enabledReactionsList = new ArrayList();
        this.reactionsMap = new HashMap<>();
        this.stickerSets = new ArrayList[]{new ArrayList<>(), new ArrayList<>(), new ArrayList<>(0), new ArrayList<>(), new ArrayList<>(), new ArrayList<>()};
        this.stickersByIds = new LongSparseArray[]{new LongSparseArray<>(), new LongSparseArray<>(), new LongSparseArray<>(), new LongSparseArray<>(), new LongSparseArray<>(), new LongSparseArray<>()};
        this.stickerSetsById = new LongSparseArray<>();
        this.installedStickerSetsById = new LongSparseArray<>();
        this.installedForceStickerSetsById = new ArrayList<>();
        this.uninstalledForceStickerSetsById = new ArrayList<>();
        this.groupStickerSets = new LongSparseArray<>();
        this.stickerSetsByName = new ConcurrentHashMap<>(100, 1.0f, 1);
        this.stickerSetDefaultStatuses = null;
        this.diceStickerSetsByEmoji = new HashMap<>();
        this.diceEmojiStickerSetsById = new LongSparseArray<>();
        this.loadingDiceStickerSets = new HashSet<>();
        this.removingStickerSetsUndos = new LongSparseArray<>();
        this.scheduledLoadStickers = new Runnable[7];
        this.loadingStickers = new boolean[7];
        this.stickersLoaded = new boolean[7];
        this.loadHash = new long[7];
        this.loadDate = new int[7];
        this.ringtoneUploaderHashMap = new HashMap<>();
        this.verifyingMessages = new HashMap<>();
        this.archivedStickersCount = new int[7];
        this.stickersByEmoji = new LongSparseArray<>();
        this.allStickers = new HashMap<>();
        this.allStickersFeatured = new HashMap<>();
        this.recentStickers = new ArrayList[]{new ArrayList<>(), new ArrayList<>(), new ArrayList<>(), new ArrayList<>(), new ArrayList<>(), new ArrayList<>(), new ArrayList<>(), new ArrayList<>()};
        this.loadingRecentStickers = new boolean[9];
        this.recentStickersLoaded = new boolean[9];
        this.recentGifs = new ArrayList<>();
        this.loadFeaturedHash = new long[2];
        this.loadFeaturedDate = new int[2];
        this.featuredStickerSets = new ArrayList[]{new ArrayList<>(), new ArrayList<>()};
        this.featuredStickerSetsById = new LongSparseArray[]{new LongSparseArray<>(), new LongSparseArray<>()};
        this.unreadStickerSets = new ArrayList[]{new ArrayList<>(), new ArrayList<>()};
        this.readingStickerSets = new ArrayList[]{new ArrayList<>(), new ArrayList<>()};
        this.loadingFeaturedStickers = new boolean[2];
        this.featuredStickersLoaded = new boolean[2];
        this.defaultEmojiThemes = new ArrayList<>();
        this.premiumPreviewStickers = new ArrayList<>();
        this.emojiStatusesHash = new long[2];
        this.emojiStatuses = new ArrayList[2];
        this.emojiStatusesFetchDate = new Long[2];
        this.emojiStatusesFromCacheFetched = new boolean[2];
        this.emojiStatusesFetching = new boolean[2];
        this.loadingStickerSets = new HashMap<>();
        this.messagesSearchCount = new int[]{0, 0};
        this.messagesSearchEndReached = new boolean[]{false, false};
        this.searchResultMessages = new ArrayList<>();
        this.searchResultMessagesMap = new SparseArray[]{new SparseArray<>(), new SparseArray<>()};
        this.hints = new ArrayList<>();
        this.inlineBots = new ArrayList<>();
        this.loadingPinnedMessages = new LongSparseArray<>();
        this.draftsFolderIds = new LongSparseArray<>();
        this.drafts = new LongSparseArray<>();
        this.draftMessages = new LongSparseArray<>();
        this.botInfos = new HashMap<>();
        this.botDialogKeyboards = new LongSparseArray<>();
        this.botKeyboards = new HashMap<>();
        this.botKeyboardsByMids = new LongSparseArray<>();
        this.currentFetchingEmoji = new HashMap<>();
        this.triedLoadingEmojipacks = false;
        this.recentReactions = new ArrayList<>();
        this.topReactions = new ArrayList<>();
        if (this.currentAccount == 0) {
            this.draftPreferences = ApplicationLoader.applicationContext.getSharedPreferences("drafts", 0);
        } else {
            this.draftPreferences = ApplicationLoader.applicationContext.getSharedPreferences("drafts" + this.currentAccount, 0);
        }
        for (Map.Entry<String, ?> entry : this.draftPreferences.getAll().entrySet()) {
            try {
                key = entry.getKey();
                longValue = Utilities.parseLong(key).longValue();
                serializedData = new SerializedData(Utilities.hexToBytes((String) entry.getValue()));
            } catch (Exception unused) {
            }
            if (key.startsWith("r_")) {
                z = false;
            } else {
                z = key.startsWith("rt_");
                if (!z) {
                    TLRPC$DraftMessage TLdeserialize = TLRPC$DraftMessage.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                    if (TLdeserialize != null) {
                        SparseArray<TLRPC$DraftMessage> sparseArray = this.drafts.get(longValue);
                        if (sparseArray == null) {
                            sparseArray = new SparseArray<>();
                            this.drafts.put(longValue, sparseArray);
                        }
                        sparseArray.put(key.startsWith("t_") ? Utilities.parseInt((CharSequence) key.substring(key.lastIndexOf(95) + 1)).intValue() : 0, TLdeserialize);
                    }
                    serializedData.cleanup();
                }
            }
            TLRPC$Message TLdeserialize2 = TLRPC$Message.TLdeserialize(serializedData, serializedData.readInt32(true), true);
            if (TLdeserialize2 != null) {
                TLdeserialize2.readAttachPath(serializedData, getUserConfig().clientUserId);
                SparseArray<TLRPC$Message> sparseArray2 = this.draftMessages.get(longValue);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray<>();
                    this.draftMessages.put(longValue, sparseArray2);
                }
                sparseArray2.put(z ? Utilities.parseInt((CharSequence) key.substring(key.lastIndexOf(95) + 1)).intValue() : 0, TLdeserialize2);
            }
            serializedData.cleanup();
        }
        loadStickersByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, false, true);
        loadEmojiThemes();
        loadRecentAndTopReactions(false);
        loadAvatarConstructor(false);
        loadAvatarConstructor(true);
        this.ringtoneDataStore = new RingtoneDataStore(this.currentAccount);
        this.menuBotsUpdateDate = getMessagesController().getMainSettings().getInt("menuBotsUpdateDate", 0);
    }

    public void cleanup() {
        int i = 0;
        while (true) {
            ArrayList<TLRPC$Document>[] arrayListArr = this.recentStickers;
            if (i >= arrayListArr.length) {
                break;
            }
            if (arrayListArr[i] != null) {
                arrayListArr[i].clear();
            }
            this.loadingRecentStickers[i] = false;
            this.recentStickersLoaded[i] = false;
            i++;
        }
        for (int i2 = 0; i2 < 4; i2++) {
            this.loadHash[i2] = 0;
            this.loadDate[i2] = 0;
            this.stickerSets[i2].clear();
            this.loadingStickers[i2] = false;
            this.stickersLoaded[i2] = false;
        }
        this.loadingPinnedMessages.clear();
        int[] iArr = this.loadFeaturedDate;
        iArr[0] = 0;
        long[] jArr = this.loadFeaturedHash;
        jArr[0] = 0;
        iArr[1] = 0;
        jArr[1] = 0;
        this.allStickers.clear();
        this.allStickersFeatured.clear();
        this.stickersByEmoji.clear();
        this.featuredStickerSetsById[0].clear();
        this.featuredStickerSets[0].clear();
        this.featuredStickerSetsById[1].clear();
        this.featuredStickerSets[1].clear();
        this.unreadStickerSets[0].clear();
        this.unreadStickerSets[1].clear();
        this.recentGifs.clear();
        this.stickerSetsById.clear();
        this.installedStickerSetsById.clear();
        this.stickerSetsByName.clear();
        this.diceStickerSetsByEmoji.clear();
        this.diceEmojiStickerSetsById.clear();
        this.loadingDiceStickerSets.clear();
        boolean[] zArr = this.loadingFeaturedStickers;
        zArr[0] = false;
        boolean[] zArr2 = this.featuredStickersLoaded;
        zArr2[0] = false;
        zArr[1] = false;
        zArr2[1] = false;
        this.loadingRecentGifs = false;
        this.recentGifsLoaded = false;
        this.currentFetchingEmoji.clear();
        if (Build.VERSION.SDK_INT >= 25) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda157
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.lambda$cleanup$1();
                }
            });
        }
        this.verifyingMessages.clear();
        this.loading = false;
        this.loaded = false;
        this.hints.clear();
        this.inlineBots.clear();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$cleanup$2();
            }
        });
        this.drafts.clear();
        this.draftMessages.clear();
        this.draftPreferences.edit().clear().apply();
        this.botInfos.clear();
        this.botKeyboards.clear();
        this.botKeyboardsByMids.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cleanup$1() {
        try {
            ShortcutManagerCompat.removeAllDynamicShortcuts(ApplicationLoader.applicationContext);
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$2() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
    }

    public boolean areStickersLoaded(int i) {
        return this.stickersLoaded[i];
    }

    public void checkStickers(int i) {
        if (this.loadingStickers[i]) {
            return;
        }
        if (!this.stickersLoaded[i] || Math.abs((System.currentTimeMillis() / 1000) - this.loadDate[i]) >= 3600) {
            loadStickers(i, true, false);
        }
    }

    public void checkReactions() {
        if (this.isLoadingReactions || Math.abs((System.currentTimeMillis() / 1000) - this.reactionsUpdateDate) < 3600) {
            return;
        }
        loadReactions(true, false);
    }

    public void checkMenuBots(boolean z) {
        if (this.isLoadingMenuBots) {
            return;
        }
        if ((!z || this.menuBotsUpdatedLocal) && Math.abs((System.currentTimeMillis() / 1000) - this.menuBotsUpdateDate) < 3600) {
            return;
        }
        loadAttachMenuBots(true, false);
    }

    public void checkPremiumPromo() {
        if (this.isLoadingPremiumPromo || Math.abs((System.currentTimeMillis() / 1000) - this.premiumPromoUpdateDate) < 3600) {
            return;
        }
        loadPremiumPromo(true);
    }

    public TLRPC$TL_help_premiumPromo getPremiumPromo() {
        return this.premiumPromo;
    }

    public Integer getPremiumHintAnnualDiscount(boolean z) {
        TLRPC$TL_help_premiumPromo tLRPC$TL_help_premiumPromo;
        int i;
        int i2;
        double d;
        int i3;
        ProductDetails productDetails;
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails;
        double d2;
        int i4;
        ProductDetails productDetails2;
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails2;
        if ((!z || (BillingController.getInstance().isReady() && BillingController.getInstance().getLastPremiumTransaction() != null)) && (tLRPC$TL_help_premiumPromo = this.premiumPromo) != null) {
            double d3 = 0.0d;
            Iterator<TLRPC$TL_premiumSubscriptionOption> it = tLRPC$TL_help_premiumPromo.period_options.iterator();
            boolean z2 = false;
            while (true) {
                i = 12;
                i2 = 1;
                if (!it.hasNext()) {
                    break;
                }
                TLRPC$TL_premiumSubscriptionOption next = it.next();
                if (z) {
                    if (next.current && Objects.equals(next.transaction.replaceAll("^(.*?)(?:\\.\\.\\d*|)$", "$1"), BillingController.getInstance().getLastPremiumTransaction())) {
                        if (BuildVars.useInvoiceBilling() && (productDetails2 = BillingController.PREMIUM_PRODUCT_DETAILS) != null) {
                            Iterator<ProductDetails.SubscriptionOfferDetails> it2 = productDetails2.getSubscriptionOfferDetails().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    subscriptionOfferDetails2 = null;
                                    break;
                                }
                                subscriptionOfferDetails2 = it2.next();
                                String billingPeriod = subscriptionOfferDetails2.getPricingPhases().getPricingPhaseList().get(0).getBillingPeriod();
                                int i5 = next.months;
                                if (i5 == 12) {
                                    if (billingPeriod.equals("P1Y")) {
                                        break;
                                    }
                                } else if (billingPeriod.equals(String.format(Locale.ROOT, "P%dM", Integer.valueOf(i5)))) {
                                    break;
                                }
                            }
                            if (subscriptionOfferDetails2 == null) {
                                d2 = next.amount;
                                i4 = next.months;
                            } else {
                                d2 = subscriptionOfferDetails2.getPricingPhases().getPricingPhaseList().get(0).getPriceAmountMicros();
                                i4 = next.months;
                            }
                        } else {
                            d2 = next.amount;
                            i4 = next.months;
                        }
                        d3 = d2 / i4;
                        z2 = true;
                    }
                } else if (next.months == 1) {
                    if (BuildVars.useInvoiceBilling()) {
                    }
                    d2 = next.amount;
                    i4 = next.months;
                    d3 = d2 / i4;
                    z2 = true;
                }
            }
            Iterator<TLRPC$TL_premiumSubscriptionOption> it3 = this.premiumPromo.period_options.iterator();
            int i6 = 0;
            while (it3.hasNext()) {
                TLRPC$TL_premiumSubscriptionOption next2 = it3.next();
                if (z2 && next2.months == i) {
                    if (!BuildVars.useInvoiceBilling() && (productDetails = BillingController.PREMIUM_PRODUCT_DETAILS) != null) {
                        Iterator<ProductDetails.SubscriptionOfferDetails> it4 = productDetails.getSubscriptionOfferDetails().iterator();
                        while (true) {
                            if (!it4.hasNext()) {
                                subscriptionOfferDetails = null;
                                break;
                            }
                            subscriptionOfferDetails = it4.next();
                            String billingPeriod2 = subscriptionOfferDetails.getPricingPhases().getPricingPhaseList().get(0).getBillingPeriod();
                            int i7 = next2.months;
                            if (i7 != i) {
                                Locale locale = Locale.ROOT;
                                Object[] objArr = new Object[i2];
                                objArr[0] = Integer.valueOf(i7);
                                if (billingPeriod2.equals(String.format(locale, "P%dM", objArr))) {
                                    break;
                                }
                                i = 12;
                            } else if (billingPeriod2.equals("P1Y")) {
                                break;
                            } else {
                                i = 12;
                            }
                        }
                        if (subscriptionOfferDetails == null) {
                            d = next2.amount;
                            i3 = next2.months;
                        } else {
                            d = subscriptionOfferDetails.getPricingPhases().getPricingPhaseList().get(0).getPriceAmountMicros();
                            i3 = next2.months;
                        }
                    } else {
                        d = next2.amount;
                        i3 = next2.months;
                    }
                    i6 = (int) ((1.0d - ((d / i3) / d3)) * 100.0d);
                }
                i = 12;
                i2 = 1;
            }
            if (!z2 || i6 <= 0) {
                return null;
            }
            return Integer.valueOf(i6);
        }
        return null;
    }

    public TLRPC$TL_attachMenuBots getAttachMenuBots() {
        return this.attachMenuBots;
    }

    public void loadAttachMenuBots(boolean z, boolean z2) {
        loadAttachMenuBots(z, z2, null);
    }

    public void loadAttachMenuBots(boolean z, boolean z2, final Runnable runnable) {
        this.isLoadingMenuBots = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadAttachMenuBots$3();
                }
            });
            return;
        }
        TLRPC$TL_messages_getAttachMenuBots tLRPC$TL_messages_getAttachMenuBots = new TLRPC$TL_messages_getAttachMenuBots();
        tLRPC$TL_messages_getAttachMenuBots.hash = z2 ? 0L : this.menuBotsUpdateHash;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getAttachMenuBots, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda207
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadAttachMenuBots$4(runnable, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [org.telegram.tgnet.TLRPC$TL_attachMenuBots] */
    public /* synthetic */ void lambda$loadAttachMenuBots$3() {
        long j;
        Exception exc;
        TLRPC$TL_attachMenuBots tLRPC$TL_attachMenuBots;
        int i;
        int i2;
        int i3;
        long j2 = 0;
        try {
            try {
                SQLiteCursor queryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, hash, date FROM attach_menu_bots", new Object[0]);
                try {
                    try {
                        if (queryFinalized.next()) {
                            NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                            if (byteBufferValue != null) {
                                TLRPC$AttachMenuBots TLdeserialize = TLRPC$AttachMenuBots.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), true);
                                r1 = TLdeserialize instanceof TLRPC$TL_attachMenuBots ? (TLRPC$TL_attachMenuBots) TLdeserialize : null;
                                byteBufferValue.reuse();
                            }
                            j2 = queryFinalized.longValue(1);
                            j = j2;
                            tLRPC$TL_attachMenuBots = r1;
                            i3 = queryFinalized.intValue(2);
                        } else {
                            j = 0;
                            tLRPC$TL_attachMenuBots = null;
                            i3 = 0;
                        }
                        if (tLRPC$TL_attachMenuBots != null) {
                            try {
                                ArrayList<Long> arrayList = new ArrayList<>();
                                for (int i4 = 0; i4 < tLRPC$TL_attachMenuBots.bots.size(); i4++) {
                                    arrayList.add(Long.valueOf(tLRPC$TL_attachMenuBots.bots.get(i4).bot_id));
                                }
                                tLRPC$TL_attachMenuBots.users.addAll(getMessagesStorage().getUsers(arrayList));
                            } catch (Exception e) {
                                exc = e;
                                i = i3;
                                r1 = queryFinalized;
                                FileLog.m98e((Throwable) exc, false);
                                if (r1 != null) {
                                    r1.dispose();
                                }
                                i2 = i;
                                processLoadedMenuBots(tLRPC$TL_attachMenuBots, j, i2, true);
                            }
                        }
                        queryFinalized.dispose();
                        i2 = i3;
                    } catch (Throwable th) {
                        th = th;
                        r1 = queryFinalized;
                        if (r1 != null) {
                            r1.dispose();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    j = j2;
                    exc = e2;
                    tLRPC$TL_attachMenuBots = r1;
                    i = 0;
                }
            } catch (Exception e3) {
                j = 0;
                exc = e3;
                tLRPC$TL_attachMenuBots = null;
                i = 0;
            }
            processLoadedMenuBots(tLRPC$TL_attachMenuBots, j, i2, true);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAttachMenuBots$4(Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC$TL_attachMenuBotsNotModified) {
            processLoadedMenuBots(null, 0L, currentTimeMillis, false);
        } else if (tLObject instanceof TLRPC$TL_attachMenuBots) {
            TLRPC$TL_attachMenuBots tLRPC$TL_attachMenuBots = (TLRPC$TL_attachMenuBots) tLObject;
            processLoadedMenuBots(tLRPC$TL_attachMenuBots, tLRPC$TL_attachMenuBots.hash, currentTimeMillis, false);
        }
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    public void processLoadedMenuBots(TLRPC$TL_attachMenuBots tLRPC$TL_attachMenuBots, long j, int i, boolean z) {
        boolean z2;
        if (tLRPC$TL_attachMenuBots != null && i != 0) {
            this.attachMenuBots = tLRPC$TL_attachMenuBots;
            this.menuBotsUpdateHash = j;
        }
        SharedPreferences.Editor edit = getMessagesController().getMainSettings().edit();
        this.menuBotsUpdateDate = i;
        edit.putInt("menuBotsUpdateDate", i).commit();
        this.menuBotsUpdatedLocal = true;
        if (tLRPC$TL_attachMenuBots != null) {
            if (!z) {
                getMessagesStorage().putUsersAndChats(tLRPC$TL_attachMenuBots.users, null, true, false);
            }
            getMessagesController().putUsers(tLRPC$TL_attachMenuBots.users, z);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedMenuBots$5();
                }
            });
            z2 = false;
            for (int i2 = 0; i2 < tLRPC$TL_attachMenuBots.bots.size(); i2++) {
                if (tLRPC$TL_attachMenuBots.bots.get(i2) instanceof TLRPC$TL_attachMenuBot_layer162) {
                    tLRPC$TL_attachMenuBots.bots.get(i2).show_in_attach_menu = true;
                    z2 = true;
                }
            }
        } else {
            z2 = false;
        }
        if (!z) {
            putMenuBotsToCache(tLRPC$TL_attachMenuBots, j, i);
        } else if (z2 || Math.abs((System.currentTimeMillis() / 1000) - i) >= 3600) {
            loadAttachMenuBots(false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMenuBots$5() {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.attachMenuBotsDidLoad, new Object[0]);
    }

    public void updateAttachMenuBotsInCache() {
        if (getAttachMenuBots() != null) {
            putMenuBotsToCache(getAttachMenuBots(), this.menuBotsUpdateHash, this.menuBotsUpdateDate);
        }
    }

    private void putMenuBotsToCache(final TLRPC$TL_attachMenuBots tLRPC$TL_attachMenuBots, final long j, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda109
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putMenuBotsToCache$6(tLRPC$TL_attachMenuBots, j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putMenuBotsToCache$6(TLRPC$TL_attachMenuBots tLRPC$TL_attachMenuBots, long j, int i) {
        try {
            if (tLRPC$TL_attachMenuBots != null) {
                getMessagesStorage().getDatabase().executeFast("DELETE FROM attach_menu_bots").stepThis().dispose();
                SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO attach_menu_bots VALUES(?, ?, ?)");
                executeFast.requery();
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$TL_attachMenuBots.getObjectSize());
                tLRPC$TL_attachMenuBots.serializeToStream(nativeByteBuffer);
                executeFast.bindByteBuffer(1, nativeByteBuffer);
                executeFast.bindLong(2, j);
                executeFast.bindInteger(3, i);
                executeFast.step();
                nativeByteBuffer.reuse();
                executeFast.dispose();
            } else {
                SQLitePreparedStatement executeFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE attach_menu_bots SET date = ?");
                executeFast2.requery();
                executeFast2.bindLong(1, i);
                executeFast2.step();
                executeFast2.dispose();
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public void loadPremiumPromo(boolean z) {
        this.isLoadingPremiumPromo = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadPremiumPromo$7();
                }
            });
            return;
        }
        getConnectionsManager().sendRequest(new TLRPC$TL_help_getPremiumPromo(), new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda177
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadPremiumPromo$8(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadPremiumPromo$7() {
        /*
            r7 = this;
            r0 = 0
            r1 = 1
            r2 = 0
            org.telegram.messenger.MessagesStorage r3 = r7.getMessagesStorage()     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3d
            org.telegram.SQLite.SQLiteDatabase r3 = r3.getDatabase()     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3d
            java.lang.String r4 = "SELECT data, date FROM premium_promo"
            java.lang.Object[] r5 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3d
            org.telegram.SQLite.SQLiteCursor r3 = r3.queryFinalized(r4, r5)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3d
            boolean r4 = r3.next()     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            if (r4 == 0) goto L2e
            org.telegram.tgnet.NativeByteBuffer r4 = r3.byteBufferValue(r2)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            if (r4 == 0) goto L2a
            int r5 = r4.readInt32(r2)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            org.telegram.tgnet.TLRPC$TL_help_premiumPromo r0 = org.telegram.tgnet.TLRPC$TL_help_premiumPromo.TLdeserialize(r4, r5, r1)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            r4.reuse()     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
        L2a:
            int r2 = r3.intValue(r1)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
        L2e:
            r3.dispose()
            goto L48
        L32:
            r0 = move-exception
            goto L4e
        L34:
            r4 = move-exception
            r6 = r3
            r3 = r0
            r0 = r6
            goto L3f
        L39:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L4e
        L3d:
            r4 = move-exception
            r3 = r0
        L3f:
            org.telegram.messenger.FileLog.m98e(r4, r2)     // Catch: java.lang.Throwable -> L39
            if (r0 == 0) goto L47
            r0.dispose()
        L47:
            r0 = r3
        L48:
            if (r0 == 0) goto L4d
            r7.processLoadedPremiumPromo(r0, r2, r1)
        L4d:
            return
        L4e:
            if (r3 == 0) goto L53
            r3.dispose()
        L53:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$loadPremiumPromo$7():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPremiumPromo$8(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC$TL_help_premiumPromo) {
            processLoadedPremiumPromo((TLRPC$TL_help_premiumPromo) tLObject, currentTimeMillis, false);
        }
    }

    public void processLoadedPremiumPromo(TLRPC$TL_help_premiumPromo tLRPC$TL_help_premiumPromo, int i, boolean z) {
        this.premiumPromo = tLRPC$TL_help_premiumPromo;
        this.premiumPromoUpdateDate = i;
        getMessagesController().putUsers(tLRPC$TL_help_premiumPromo.users, z);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedPremiumPromo$9();
            }
        });
        if (!z) {
            putPremiumPromoToCache(tLRPC$TL_help_premiumPromo, i);
        } else if (Math.abs((System.currentTimeMillis() / 1000) - i) >= 86400 || BuildVars.DEBUG_PRIVATE_VERSION) {
            loadPremiumPromo(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedPremiumPromo$9() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.premiumPromoUpdated, new Object[0]);
    }

    private void putPremiumPromoToCache(final TLRPC$TL_help_premiumPromo tLRPC$TL_help_premiumPromo, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putPremiumPromoToCache$10(tLRPC$TL_help_premiumPromo, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putPremiumPromoToCache$10(TLRPC$TL_help_premiumPromo tLRPC$TL_help_premiumPromo, int i) {
        try {
            if (tLRPC$TL_help_premiumPromo != null) {
                getMessagesStorage().getDatabase().executeFast("DELETE FROM premium_promo").stepThis().dispose();
                SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO premium_promo VALUES(?, ?)");
                executeFast.requery();
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$TL_help_premiumPromo.getObjectSize());
                tLRPC$TL_help_premiumPromo.serializeToStream(nativeByteBuffer);
                executeFast.bindByteBuffer(1, nativeByteBuffer);
                executeFast.bindInteger(2, i);
                executeFast.step();
                nativeByteBuffer.reuse();
                executeFast.dispose();
            } else {
                SQLitePreparedStatement executeFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE premium_promo SET date = ?");
                executeFast2.requery();
                executeFast2.bindInteger(1, i);
                executeFast2.step();
                executeFast2.dispose();
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public List<TLRPC$TL_availableReaction> getReactionsList() {
        return this.reactionsList;
    }

    public void loadReactions(boolean z, boolean z2) {
        this.isLoadingReactions = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadReactions$12();
                }
            });
            return;
        }
        TLRPC$TL_messages_getAvailableReactions tLRPC$TL_messages_getAvailableReactions = new TLRPC$TL_messages_getAvailableReactions();
        tLRPC$TL_messages_getAvailableReactions.hash = z2 ? 0 : this.reactionsUpdateHash;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getAvailableReactions, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda181
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadReactions$14(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadReactions$12() {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            org.telegram.messenger.MessagesStorage r2 = r9.getMessagesStorage()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5f
            org.telegram.SQLite.SQLiteDatabase r2 = r2.getDatabase()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5f
            java.lang.String r3 = "SELECT data, hash, date FROM reactions"
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5f
            org.telegram.SQLite.SQLiteCursor r2 = r2.queryFinalized(r3, r4)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5f
            boolean r3 = r2.next()     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L79
            if (r3 == 0) goto L51
            org.telegram.tgnet.NativeByteBuffer r3 = r2.byteBufferValue(r1)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L79
            r4 = 1
            if (r3 == 0) goto L40
            int r5 = r3.readInt32(r1)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L79
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L79
            r6.<init>(r5)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L79
            r0 = r1
        L29:
            if (r0 >= r5) goto L39
            int r7 = r3.readInt32(r1)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L79
            org.telegram.tgnet.TLRPC$TL_availableReaction r7 = org.telegram.tgnet.TLRPC$TL_availableReaction.TLdeserialize(r3, r7, r4)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L79
            r6.add(r7)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L79
            int r0 = r0 + 1
            goto L29
        L39:
            r3.reuse()     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L79
            r0 = r6
            goto L40
        L3e:
            r0 = move-exception
            goto L59
        L40:
            int r3 = r2.intValue(r4)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L79
            r4 = 2
            int r1 = r2.intValue(r4)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L79
            r8 = r3
            r3 = r1
            r1 = r8
            goto L52
        L4d:
            r4 = move-exception
            r6 = r0
            r0 = r4
            goto L64
        L51:
            r3 = r1
        L52:
            r2.dispose()
            goto L70
        L56:
            r3 = move-exception
            r6 = r0
            r0 = r3
        L59:
            r3 = r1
            goto L64
        L5b:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L7a
        L5f:
            r2 = move-exception
            r6 = r0
            r3 = r1
            r0 = r2
            r2 = r6
        L64:
            org.telegram.messenger.FileLog.m98e(r0, r1)     // Catch: java.lang.Throwable -> L79
            if (r2 == 0) goto L6c
            r2.dispose()
        L6c:
            r0 = r6
            r8 = r3
            r3 = r1
            r1 = r8
        L70:
            org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda83 r2 = new org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda83
            r2.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r2)
            return
        L79:
            r0 = move-exception
        L7a:
            if (r2 == 0) goto L7f
            r2.dispose()
        L7f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$loadReactions$12():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReactions$11(List list, int i, int i2) {
        processLoadedReactions(list, i, i2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReactions$14(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadReactions$13(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReactions$13(TLObject tLObject) {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC$TL_messages_availableReactionsNotModified) {
            processLoadedReactions(null, 0, currentTimeMillis, false);
        } else if (tLObject instanceof TLRPC$TL_messages_availableReactions) {
            TLRPC$TL_messages_availableReactions tLRPC$TL_messages_availableReactions = (TLRPC$TL_messages_availableReactions) tLObject;
            processLoadedReactions(tLRPC$TL_messages_availableReactions.reactions, tLRPC$TL_messages_availableReactions.hash, currentTimeMillis, false);
        }
    }

    public void processLoadedReactions(List<TLRPC$TL_availableReaction> list, int i, int i2, boolean z) {
        if (list != null && i2 != 0) {
            this.reactionsList.clear();
            this.reactionsMap.clear();
            this.enabledReactionsList.clear();
            this.reactionsList.addAll(list);
            for (int i3 = 0; i3 < this.reactionsList.size(); i3++) {
                this.reactionsList.get(i3).positionInList = i3;
                this.reactionsMap.put(this.reactionsList.get(i3).reaction, this.reactionsList.get(i3));
                if (!this.reactionsList.get(i3).inactive) {
                    this.enabledReactionsList.add(this.reactionsList.get(i3));
                }
            }
            this.reactionsUpdateHash = i;
        }
        this.reactionsUpdateDate = i2;
        if (list != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedReactions$15();
                }
            });
        }
        this.isLoadingReactions = false;
        if (!z) {
            putReactionsToCache(list, i, i2);
        } else if (Math.abs((System.currentTimeMillis() / 1000) - i2) >= 3600) {
            loadReactions(false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedReactions$15() {
        preloadDefaultReactions();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reactionsDidLoad, new Object[0]);
    }

    public void preloadDefaultReactions() {
        if (this.reactionsList == null || this.reactionsCacheGenerated || !LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS) || this.currentAccount != UserConfig.selectedAccount) {
            return;
        }
        this.reactionsCacheGenerated = true;
        ArrayList arrayList = new ArrayList(this.reactionsList);
        int min = Math.min(arrayList.size(), 10);
        for (int i = 0; i < min; i++) {
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction = (TLRPC$TL_availableReaction) arrayList.get(i);
            preloadImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.activate_animation), 0);
            preloadImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.appear_animation), 0);
        }
        for (int i2 = 0; i2 < min; i2++) {
            preloadImage(ImageLocation.getForDocument(((TLRPC$TL_availableReaction) arrayList.get(i2)).effect_animation), 0);
        }
    }

    public void preloadImage(ImageLocation imageLocation, int i) {
        getFileLoader().loadFile(imageLocation, null, null, i, 11);
    }

    public void preloadImage(ImageReceiver imageReceiver, ImageLocation imageLocation, String str) {
        if (LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS)) {
            imageReceiver.setUniqKeyPrefix("preload");
            imageReceiver.setFileLoadingPriority(0);
            imageReceiver.setImage(imageLocation, str, null, null, 0, 11);
        }
    }

    private void putReactionsToCache(List<TLRPC$TL_availableReaction> list, final int i, final int i2) {
        final ArrayList arrayList = list != null ? new ArrayList(list) : null;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putReactionsToCache$16(arrayList, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putReactionsToCache$16(ArrayList arrayList, int i, int i2) {
        try {
            if (arrayList != null) {
                getMessagesStorage().getDatabase().executeFast("DELETE FROM reactions").stepThis().dispose();
                SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO reactions VALUES(?, ?, ?)");
                executeFast.requery();
                int i3 = 4;
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    i3 += ((TLRPC$TL_availableReaction) arrayList.get(i4)).getObjectSize();
                }
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(i3);
                nativeByteBuffer.writeInt32(arrayList.size());
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    ((TLRPC$TL_availableReaction) arrayList.get(i5)).serializeToStream(nativeByteBuffer);
                }
                executeFast.bindByteBuffer(1, nativeByteBuffer);
                executeFast.bindInteger(2, i);
                executeFast.bindInteger(3, i2);
                executeFast.step();
                nativeByteBuffer.reuse();
                executeFast.dispose();
                return;
            }
            SQLitePreparedStatement executeFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE reactions SET date = ?");
            executeFast2.requery();
            executeFast2.bindLong(1, i2);
            executeFast2.step();
            executeFast2.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public void checkFeaturedStickers() {
        if (this.loadingFeaturedStickers[0]) {
            return;
        }
        if (!this.featuredStickersLoaded[0] || Math.abs((System.currentTimeMillis() / 1000) - this.loadFeaturedDate[0]) >= 3600) {
            loadFeaturedStickers(false, true, false);
        }
    }

    public void checkFeaturedEmoji() {
        if (this.loadingFeaturedStickers[1]) {
            return;
        }
        if (!this.featuredStickersLoaded[1] || Math.abs((System.currentTimeMillis() / 1000) - this.loadFeaturedDate[1]) >= 3600) {
            loadFeaturedStickers(true, true, false);
        }
    }

    public ArrayList<TLRPC$Document> getRecentStickers(int i) {
        ArrayList<TLRPC$Document> arrayList = this.recentStickers[i];
        if (i == 7) {
            return new ArrayList<>(this.recentStickers[i]);
        }
        return new ArrayList<>(arrayList.subList(0, Math.min(arrayList.size(), 20)));
    }

    public ArrayList<TLRPC$Document> getRecentStickersNoCopy(int i) {
        return this.recentStickers[i];
    }

    public boolean isStickerInFavorites(TLRPC$Document tLRPC$Document) {
        if (tLRPC$Document == null) {
            return false;
        }
        for (int i = 0; i < this.recentStickers[2].size(); i++) {
            TLRPC$Document tLRPC$Document2 = this.recentStickers[2].get(i);
            if (tLRPC$Document2.f1610id == tLRPC$Document.f1610id && tLRPC$Document2.dc_id == tLRPC$Document.dc_id) {
                return true;
            }
        }
        return false;
    }

    public void clearRecentStickers() {
        getConnectionsManager().sendRequest(new TLObject() { // from class: org.telegram.tgnet.TLRPC$TL_messages_clearRecentStickers
            public boolean attached;
            public int flags;

            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
                return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(-1986437075);
                int i = this.attached ? this.flags | 1 : this.flags & (-2);
                this.flags = i;
                abstractSerializedData.writeInt32(i);
            }
        }, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda180
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$clearRecentStickers$19(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentStickers$19(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda91
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$clearRecentStickers$18(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentStickers$18(TLObject tLObject) {
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$clearRecentStickers$17();
                }
            });
            this.recentStickers[0].clear();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentDocumentsDidLoad, Boolean.FALSE, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentStickers$17() {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM web_recent_v3 WHERE type = 3").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public void addRecentSticker(final int i, final Object obj, TLRPC$Document tLRPC$Document, int i2, boolean z) {
        boolean z2;
        int i3;
        final TLRPC$Document remove;
        if (i != 3) {
            if (MessageObject.isStickerDocument(tLRPC$Document) || MessageObject.isAnimatedStickerDocument(tLRPC$Document, true)) {
                int i4 = 0;
                while (true) {
                    if (i4 >= this.recentStickers[i].size()) {
                        z2 = false;
                        break;
                    }
                    TLRPC$Document tLRPC$Document2 = this.recentStickers[i].get(i4);
                    if (tLRPC$Document2.f1610id == tLRPC$Document.f1610id) {
                        this.recentStickers[i].remove(i4);
                        if (!z) {
                            this.recentStickers[i].add(0, tLRPC$Document2);
                        }
                        z2 = true;
                    } else {
                        i4++;
                    }
                }
                if (!z2 && !z) {
                    this.recentStickers[i].add(0, tLRPC$Document);
                }
                if (i == 2) {
                    if (z) {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 0, tLRPC$Document, 4);
                    } else {
                        boolean z3 = this.recentStickers[i].size() > getMessagesController().maxFaveStickersCount;
                        NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
                        int i5 = NotificationCenter.showBulletin;
                        Object[] objArr = new Object[3];
                        objArr[0] = 0;
                        objArr[1] = tLRPC$Document;
                        objArr[2] = Integer.valueOf(z3 ? 6 : 5);
                        globalInstance.lambda$postNotificationNameOnUIThread$1(i5, objArr);
                    }
                    final TLRPC$TL_messages_faveSticker tLRPC$TL_messages_faveSticker = new TLRPC$TL_messages_faveSticker();
                    TLRPC$TL_inputDocument tLRPC$TL_inputDocument = new TLRPC$TL_inputDocument();
                    tLRPC$TL_messages_faveSticker.f1691id = tLRPC$TL_inputDocument;
                    tLRPC$TL_inputDocument.f1618id = tLRPC$Document.f1610id;
                    tLRPC$TL_inputDocument.access_hash = tLRPC$Document.access_hash;
                    byte[] bArr = tLRPC$Document.file_reference;
                    tLRPC$TL_inputDocument.file_reference = bArr;
                    if (bArr == null) {
                        tLRPC$TL_inputDocument.file_reference = new byte[0];
                    }
                    tLRPC$TL_messages_faveSticker.unfave = z;
                    getConnectionsManager().sendRequest(tLRPC$TL_messages_faveSticker, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda205
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            MediaDataController.this.lambda$addRecentSticker$21(obj, tLRPC$TL_messages_faveSticker, tLObject, tLRPC$TL_error);
                        }
                    });
                    i3 = getMessagesController().maxFaveStickersCount;
                } else {
                    if (i == 0 && z) {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 0, tLRPC$Document, 3);
                        final TLRPC$TL_messages_saveRecentSticker tLRPC$TL_messages_saveRecentSticker = new TLRPC$TL_messages_saveRecentSticker();
                        TLRPC$TL_inputDocument tLRPC$TL_inputDocument2 = new TLRPC$TL_inputDocument();
                        tLRPC$TL_messages_saveRecentSticker.f1710id = tLRPC$TL_inputDocument2;
                        tLRPC$TL_inputDocument2.f1618id = tLRPC$Document.f1610id;
                        tLRPC$TL_inputDocument2.access_hash = tLRPC$Document.access_hash;
                        byte[] bArr2 = tLRPC$Document.file_reference;
                        tLRPC$TL_inputDocument2.file_reference = bArr2;
                        if (bArr2 == null) {
                            tLRPC$TL_inputDocument2.file_reference = new byte[0];
                        }
                        tLRPC$TL_messages_saveRecentSticker.unsave = true;
                        getConnectionsManager().sendRequest(tLRPC$TL_messages_saveRecentSticker, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda206
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                MediaDataController.this.lambda$addRecentSticker$22(obj, tLRPC$TL_messages_saveRecentSticker, tLObject, tLRPC$TL_error);
                            }
                        });
                    }
                    i3 = getMessagesController().maxRecentStickersCount;
                }
                if (this.recentStickers[i].size() > i3 || z) {
                    if (z) {
                        remove = tLRPC$Document;
                    } else {
                        ArrayList<TLRPC$Document>[] arrayListArr = this.recentStickers;
                        remove = arrayListArr[i].remove(arrayListArr[i].size() - 1);
                    }
                    getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda35
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaDataController.this.lambda$addRecentSticker$23(i, remove);
                        }
                    });
                }
                if (!z) {
                    ArrayList<TLRPC$Document> arrayList = new ArrayList<>();
                    arrayList.add(tLRPC$Document);
                    processLoadedRecentDocuments(i, arrayList, false, i2, false);
                }
                if (i == 2 || (i == 0 && z)) {
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentDocumentsDidLoad, Boolean.FALSE, Integer.valueOf(i));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentSticker$21(Object obj, TLRPC$TL_messages_faveSticker tLRPC$TL_messages_faveSticker, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null && FileRefController.isFileRefError(tLRPC$TL_error.text) && obj != null) {
            getFileRefController().requestReference(obj, tLRPC$TL_messages_faveSticker);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$addRecentSticker$20();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentSticker$20() {
        getMediaDataController().loadRecents(2, false, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentSticker$22(Object obj, TLRPC$TL_messages_saveRecentSticker tLRPC$TL_messages_saveRecentSticker, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null || !FileRefController.isFileRefError(tLRPC$TL_error.text) || obj == null) {
            return;
        }
        getFileRefController().requestReference(obj, tLRPC$TL_messages_saveRecentSticker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentSticker$23(int i, TLRPC$Document tLRPC$Document) {
        int i2 = 5;
        if (i == 0) {
            i2 = 3;
        } else if (i == 1) {
            i2 = 4;
        } else if (i == 5) {
            i2 = 7;
        }
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            database.executeFast("DELETE FROM web_recent_v3 WHERE id = '" + tLRPC$Document.f1610id + "' AND type = " + i2).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public ArrayList<TLRPC$Document> getRecentGifs() {
        return new ArrayList<>(this.recentGifs);
    }

    public void removeRecentGif(final TLRPC$Document tLRPC$Document) {
        int size = this.recentGifs.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            } else if (this.recentGifs.get(i).f1610id == tLRPC$Document.f1610id) {
                this.recentGifs.remove(i);
                break;
            } else {
                i++;
            }
        }
        final TLRPC$TL_messages_saveGif tLRPC$TL_messages_saveGif = new TLRPC$TL_messages_saveGif();
        TLRPC$TL_inputDocument tLRPC$TL_inputDocument = new TLRPC$TL_inputDocument();
        tLRPC$TL_messages_saveGif.f1709id = tLRPC$TL_inputDocument;
        tLRPC$TL_inputDocument.f1618id = tLRPC$Document.f1610id;
        tLRPC$TL_inputDocument.access_hash = tLRPC$Document.access_hash;
        byte[] bArr = tLRPC$Document.file_reference;
        tLRPC$TL_inputDocument.file_reference = bArr;
        if (bArr == null) {
            tLRPC$TL_inputDocument.file_reference = new byte[0];
        }
        tLRPC$TL_messages_saveGif.unsave = true;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_saveGif, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda218
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$removeRecentGif$24(tLRPC$TL_messages_saveGif, tLObject, tLRPC$TL_error);
            }
        });
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda100
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$removeRecentGif$25(tLRPC$Document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeRecentGif$24(TLRPC$TL_messages_saveGif tLRPC$TL_messages_saveGif, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null || !FileRefController.isFileRefError(tLRPC$TL_error.text)) {
            return;
        }
        getFileRefController().requestReference(AnalyticsEvent.SendClip.typeGif, tLRPC$TL_messages_saveGif);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeRecentGif$25(TLRPC$Document tLRPC$Document) {
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            database.executeFast("DELETE FROM web_recent_v3 WHERE id = '" + tLRPC$Document.f1610id + "' AND type = 2").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public boolean hasRecentGif(TLRPC$Document tLRPC$Document) {
        for (int i = 0; i < this.recentGifs.size(); i++) {
            TLRPC$Document tLRPC$Document2 = this.recentGifs.get(i);
            if (tLRPC$Document2.f1610id == tLRPC$Document.f1610id) {
                this.recentGifs.remove(i);
                this.recentGifs.add(0, tLRPC$Document2);
                return true;
            }
        }
        return false;
    }

    public void addRecentGif(final TLRPC$Document tLRPC$Document, int i, boolean z) {
        boolean z2;
        if (tLRPC$Document == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.recentGifs.size()) {
                z2 = false;
                break;
            }
            TLRPC$Document tLRPC$Document2 = this.recentGifs.get(i2);
            if (tLRPC$Document2.f1610id == tLRPC$Document.f1610id) {
                this.recentGifs.remove(i2);
                this.recentGifs.add(0, tLRPC$Document2);
                z2 = true;
                break;
            }
            i2++;
        }
        if (!z2) {
            this.recentGifs.add(0, tLRPC$Document);
        }
        if ((this.recentGifs.size() > getMessagesController().savedGifsLimitDefault && !UserConfig.getInstance(this.currentAccount).isPremium()) || this.recentGifs.size() > getMessagesController().savedGifsLimitPremium) {
            ArrayList<TLRPC$Document> arrayList = this.recentGifs;
            final TLRPC$Document remove = arrayList.remove(arrayList.size() - 1);
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda101
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$addRecentGif$26(remove);
                }
            });
            if (z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda154
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.lambda$addRecentGif$27(TLRPC$Document.this);
                    }
                });
            }
        }
        ArrayList<TLRPC$Document> arrayList2 = new ArrayList<>();
        arrayList2.add(tLRPC$Document);
        processLoadedRecentDocuments(0, arrayList2, true, i, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentGif$26(TLRPC$Document tLRPC$Document) {
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            database.executeFast("DELETE FROM web_recent_v3 WHERE id = '" + tLRPC$Document.f1610id + "' AND type = 2").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$addRecentGif$27(TLRPC$Document tLRPC$Document) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 0, tLRPC$Document, 7);
    }

    public boolean isLoadingStickers(int i) {
        return this.loadingStickers[i];
    }

    public void replaceStickerSet(final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        boolean z;
        int i;
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2 = this.stickerSetsById.get(tLRPC$TL_messages_stickerSet.set.f1636id);
        String str = this.diceEmojiStickerSetsById.get(tLRPC$TL_messages_stickerSet.set.f1636id);
        if (str != null) {
            this.diceStickerSetsByEmoji.put(str, tLRPC$TL_messages_stickerSet);
            putDiceStickersToCache(str, tLRPC$TL_messages_stickerSet, (int) (System.currentTimeMillis() / 1000));
        }
        if (tLRPC$TL_messages_stickerSet2 == null) {
            tLRPC$TL_messages_stickerSet2 = this.stickerSetsByName.get(tLRPC$TL_messages_stickerSet.set.short_name);
        }
        boolean z2 = tLRPC$TL_messages_stickerSet2 == null && (tLRPC$TL_messages_stickerSet2 = this.groupStickerSets.get(tLRPC$TL_messages_stickerSet.set.f1636id)) != null;
        if (tLRPC$TL_messages_stickerSet2 == null) {
            return;
        }
        if ("AnimatedEmojies".equals(tLRPC$TL_messages_stickerSet.set.short_name)) {
            tLRPC$TL_messages_stickerSet2.documents = tLRPC$TL_messages_stickerSet.documents;
            tLRPC$TL_messages_stickerSet2.packs = tLRPC$TL_messages_stickerSet.packs;
            tLRPC$TL_messages_stickerSet2.set = tLRPC$TL_messages_stickerSet.set;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda120
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$replaceStickerSet$28(tLRPC$TL_messages_stickerSet);
                }
            });
            z = true;
        } else {
            LongSparseArray longSparseArray = new LongSparseArray();
            int size = tLRPC$TL_messages_stickerSet.documents.size();
            for (int i2 = 0; i2 < size; i2++) {
                TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(i2);
                longSparseArray.put(tLRPC$Document.f1610id, tLRPC$Document);
            }
            int size2 = tLRPC$TL_messages_stickerSet2.documents.size();
            z = false;
            for (int i3 = 0; i3 < size2; i3++) {
                TLRPC$Document tLRPC$Document2 = (TLRPC$Document) longSparseArray.get(tLRPC$TL_messages_stickerSet2.documents.get(i3).f1610id);
                if (tLRPC$Document2 != null) {
                    tLRPC$TL_messages_stickerSet2.documents.set(i3, tLRPC$Document2);
                    z = true;
                }
            }
        }
        if (z) {
            if (z2) {
                putSetToCache(tLRPC$TL_messages_stickerSet2);
                return;
            }
            TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
            if (tLRPC$StickerSet.masks) {
                i = 1;
            } else {
                i = tLRPC$StickerSet.emojis ? 5 : 0;
            }
            putStickersToCache(i, this.stickerSets[i], this.loadDate[i], this.loadHash[i]);
            if ("AnimatedEmojies".equals(tLRPC$TL_messages_stickerSet.set.short_name)) {
                putStickersToCache(4, this.stickerSets[4], this.loadDate[4], this.loadHash[4]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$replaceStickerSet$28(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        LongSparseArray<TLRPC$Document> stickerByIds = getStickerByIds(4);
        for (int i = 0; i < tLRPC$TL_messages_stickerSet.documents.size(); i++) {
            TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(i);
            stickerByIds.put(tLRPC$Document.f1610id, tLRPC$Document);
        }
    }

    public TLRPC$TL_messages_stickerSet getStickerSetByName(String str) {
        return this.stickerSetsByName.get(str);
    }

    public TLRPC$TL_messages_stickerSet getStickerSetByEmojiOrName(String str) {
        return this.diceStickerSetsByEmoji.get(str);
    }

    public TLRPC$TL_messages_stickerSet getStickerSetById(long j) {
        return this.stickerSetsById.get(j);
    }

    public TLRPC$TL_messages_stickerSet getGroupStickerSetById(TLRPC$StickerSet tLRPC$StickerSet) {
        TLRPC$StickerSet tLRPC$StickerSet2;
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = this.stickerSetsById.get(tLRPC$StickerSet.f1636id);
        if (tLRPC$TL_messages_stickerSet == null) {
            tLRPC$TL_messages_stickerSet = this.groupStickerSets.get(tLRPC$StickerSet.f1636id);
            if (tLRPC$TL_messages_stickerSet == null || (tLRPC$StickerSet2 = tLRPC$TL_messages_stickerSet.set) == null) {
                loadGroupStickerSet(tLRPC$StickerSet, true);
            } else if (tLRPC$StickerSet2.hash != tLRPC$StickerSet.hash) {
                loadGroupStickerSet(tLRPC$StickerSet, false);
            }
        }
        return tLRPC$TL_messages_stickerSet;
    }

    public void putGroupStickerSet(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        this.groupStickerSets.put(tLRPC$TL_messages_stickerSet.set.f1636id, tLRPC$TL_messages_stickerSet);
    }

    public static TLRPC$InputStickerSet getInputStickerSet(TLRPC$StickerSet tLRPC$StickerSet) {
        if (tLRPC$StickerSet != null) {
            TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
            tLRPC$TL_inputStickerSetID.f1625id = tLRPC$StickerSet.f1636id;
            tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet.access_hash;
            return tLRPC$TL_inputStickerSetID;
        }
        return null;
    }

    public TLRPC$TL_messages_stickerSet getStickerSet(TLRPC$InputStickerSet tLRPC$InputStickerSet, boolean z) {
        return getStickerSet(tLRPC$InputStickerSet, null, z, null);
    }

    public TLRPC$TL_messages_stickerSet getStickerSet(TLRPC$InputStickerSet tLRPC$InputStickerSet, Integer num, boolean z) {
        return getStickerSet(tLRPC$InputStickerSet, num, z, null);
    }

    public TLRPC$TL_messages_stickerSet getStickerSet(final TLRPC$InputStickerSet tLRPC$InputStickerSet, final Integer num, boolean z, final Utilities.Callback<TLRPC$TL_messages_stickerSet> callback) {
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet;
        String str;
        if (tLRPC$InputStickerSet == null) {
            return null;
        }
        boolean z2 = tLRPC$InputStickerSet instanceof TLRPC$TL_inputStickerSetID;
        if (z2 && this.stickerSetsById.containsKey(tLRPC$InputStickerSet.f1625id)) {
            tLRPC$TL_messages_stickerSet = this.stickerSetsById.get(tLRPC$InputStickerSet.f1625id);
        } else if ((tLRPC$InputStickerSet instanceof TLRPC$TL_inputStickerSetShortName) && (str = tLRPC$InputStickerSet.short_name) != null && this.stickerSetsByName.containsKey(str.toLowerCase())) {
            tLRPC$TL_messages_stickerSet = this.stickerSetsByName.get(tLRPC$InputStickerSet.short_name.toLowerCase());
        } else if (!(tLRPC$InputStickerSet instanceof TLRPC$TL_inputStickerSetEmojiDefaultStatuses) || (tLRPC$TL_messages_stickerSet = this.stickerSetDefaultStatuses) == null) {
            tLRPC$TL_messages_stickerSet = null;
        }
        if (tLRPC$TL_messages_stickerSet != null) {
            if (callback != null) {
                callback.run(tLRPC$TL_messages_stickerSet);
            }
            return tLRPC$TL_messages_stickerSet;
        }
        if (z2) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda102
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$getStickerSet$31(tLRPC$InputStickerSet, num, callback);
                }
            });
        } else if (!z) {
            fetchStickerSetInternal(tLRPC$InputStickerSet, new Utilities.Callback2() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda170
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    MediaDataController.this.lambda$getStickerSet$32(callback, tLRPC$InputStickerSet, (Boolean) obj, (TLRPC$TL_messages_stickerSet) obj2);
                }
            });
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$31(final TLRPC$InputStickerSet tLRPC$InputStickerSet, Integer num, final Utilities.Callback callback) {
        final TLRPC$TL_messages_stickerSet cachedStickerSetInternal = getCachedStickerSetInternal(tLRPC$InputStickerSet.f1625id, num);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda122
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$getStickerSet$30(cachedStickerSetInternal, callback, tLRPC$InputStickerSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$30(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, final Utilities.Callback callback, TLRPC$InputStickerSet tLRPC$InputStickerSet) {
        if (tLRPC$TL_messages_stickerSet != null) {
            if (callback != null) {
                callback.run(tLRPC$TL_messages_stickerSet);
            }
            TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
            if (tLRPC$StickerSet != null) {
                this.stickerSetsById.put(tLRPC$StickerSet.f1636id, tLRPC$TL_messages_stickerSet);
                this.stickerSetsByName.put(tLRPC$TL_messages_stickerSet.set.short_name.toLowerCase(), tLRPC$TL_messages_stickerSet);
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tLRPC$TL_messages_stickerSet.set.f1636id), tLRPC$TL_messages_stickerSet);
            return;
        }
        fetchStickerSetInternal(tLRPC$InputStickerSet, new Utilities.Callback2() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda169
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                MediaDataController.this.lambda$getStickerSet$29(callback, (Boolean) obj, (TLRPC$TL_messages_stickerSet) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$29(Utilities.Callback callback, Boolean bool, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        TLRPC$StickerSet tLRPC$StickerSet;
        if (callback != null) {
            callback.run(tLRPC$TL_messages_stickerSet);
        }
        if (tLRPC$TL_messages_stickerSet == null || (tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set) == null) {
            return;
        }
        this.stickerSetsById.put(tLRPC$StickerSet.f1636id, tLRPC$TL_messages_stickerSet);
        this.stickerSetsByName.put(tLRPC$TL_messages_stickerSet.set.short_name.toLowerCase(), tLRPC$TL_messages_stickerSet);
        saveStickerSetIntoCache(tLRPC$TL_messages_stickerSet);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tLRPC$TL_messages_stickerSet.set.f1636id), tLRPC$TL_messages_stickerSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStickerSet$32(Utilities.Callback callback, TLRPC$InputStickerSet tLRPC$InputStickerSet, Boolean bool, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        if (callback != null) {
            callback.run(tLRPC$TL_messages_stickerSet);
        }
        if (tLRPC$TL_messages_stickerSet != null) {
            TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
            if (tLRPC$StickerSet != null) {
                this.stickerSetsById.put(tLRPC$StickerSet.f1636id, tLRPC$TL_messages_stickerSet);
                this.stickerSetsByName.put(tLRPC$TL_messages_stickerSet.set.short_name.toLowerCase(), tLRPC$TL_messages_stickerSet);
                if (tLRPC$InputStickerSet instanceof TLRPC$TL_inputStickerSetEmojiDefaultStatuses) {
                    this.stickerSetDefaultStatuses = tLRPC$TL_messages_stickerSet;
                }
            }
            saveStickerSetIntoCache(tLRPC$TL_messages_stickerSet);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tLRPC$TL_messages_stickerSet.set.f1636id), tLRPC$TL_messages_stickerSet);
        }
    }

    private void cleanupStickerSetCache() {
        if (this.cleanedupStickerSetCache) {
            return;
        }
        this.cleanedupStickerSetCache = true;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$cleanupStickerSetCache$33();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupStickerSetCache$33() {
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            database.executeFast("DELETE FROM stickersets2 WHERE date < " + (System.currentTimeMillis() - 604800000)).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private void saveStickerSetIntoCache(final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        if (tLRPC$TL_messages_stickerSet == null || tLRPC$TL_messages_stickerSet.set == null) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda117
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$saveStickerSetIntoCache$34(tLRPC$TL_messages_stickerSet);
            }
        });
        cleanupStickerSetCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveStickerSetIntoCache$34(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        try {
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO stickersets2 VALUES(?, ?, ?, ?)");
            executeFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$TL_messages_stickerSet.getObjectSize());
            tLRPC$TL_messages_stickerSet.serializeToStream(nativeByteBuffer);
            executeFast.bindLong(1, tLRPC$TL_messages_stickerSet.set.f1636id);
            executeFast.bindByteBuffer(2, nativeByteBuffer);
            executeFast.bindInteger(3, tLRPC$TL_messages_stickerSet.set.hash);
            executeFast.bindLong(4, System.currentTimeMillis());
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x007b, code lost:
        if (r5 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.telegram.tgnet.TLRPC$TL_messages_stickerSet getCachedStickerSetInternal(long r5, java.lang.Integer r7) {
        /*
            r4 = this;
            r0 = 0
            org.telegram.messenger.MessagesStorage r1 = r4.getMessagesStorage()     // Catch: java.lang.Throwable -> L70
            org.telegram.SQLite.SQLiteDatabase r1 = r1.getDatabase()     // Catch: java.lang.Throwable -> L70
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L70
            r2.<init>()     // Catch: java.lang.Throwable -> L70
            java.lang.String r3 = "SELECT data, hash FROM stickersets2 WHERE id = "
            r2.append(r3)     // Catch: java.lang.Throwable -> L70
            r2.append(r5)     // Catch: java.lang.Throwable -> L70
            java.lang.String r5 = " LIMIT 1"
            r2.append(r5)     // Catch: java.lang.Throwable -> L70
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L70
            r6 = 0
            java.lang.Object[] r2 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L70
            org.telegram.SQLite.SQLiteCursor r5 = r1.queryFinalized(r5, r2)     // Catch: java.lang.Throwable -> L70
            boolean r1 = r5.next()     // Catch: java.lang.Throwable -> L6d
            if (r1 == 0) goto L63
            boolean r1 = r5.isNull(r6)     // Catch: java.lang.Throwable -> L6d
            if (r1 != 0) goto L63
            org.telegram.tgnet.NativeByteBuffer r1 = r5.byteBufferValue(r6)     // Catch: java.lang.Throwable -> L6d
            if (r1 == 0) goto L60
            int r2 = r1.readInt32(r6)     // Catch: java.lang.Throwable -> L5c
            org.telegram.tgnet.TLRPC$TL_messages_stickerSet r6 = org.telegram.tgnet.TLRPC$messages_StickerSet.TLdeserialize(r1, r2, r6)     // Catch: java.lang.Throwable -> L5c
            r2 = 1
            int r2 = r5.intValue(r2)     // Catch: java.lang.Throwable -> L5a
            if (r7 == 0) goto L61
            int r3 = r7.intValue()     // Catch: java.lang.Throwable -> L5a
            if (r3 == 0) goto L61
            int r7 = r7.intValue()     // Catch: java.lang.Throwable -> L5a
            if (r7 == r2) goto L61
            r1.reuse()
            r5.dispose()
            return r0
        L5a:
            r7 = move-exception
            goto L5e
        L5c:
            r7 = move-exception
            r6 = r0
        L5e:
            r0 = r1
            goto L73
        L60:
            r6 = r0
        L61:
            r0 = r1
            goto L64
        L63:
            r6 = r0
        L64:
            if (r0 == 0) goto L69
            r0.reuse()
        L69:
            r5.dispose()
            goto L7e
        L6d:
            r7 = move-exception
            r6 = r0
            goto L73
        L70:
            r7 = move-exception
            r5 = r0
            r6 = r5
        L73:
            org.telegram.messenger.FileLog.m99e(r7)     // Catch: java.lang.Throwable -> L7f
            if (r0 == 0) goto L7b
            r0.reuse()
        L7b:
            if (r5 == 0) goto L7e
            goto L69
        L7e:
            return r6
        L7f:
            r6 = move-exception
            if (r0 == 0) goto L85
            r0.reuse()
        L85:
            if (r5 == 0) goto L8a
            r5.dispose()
        L8a:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.getCachedStickerSetInternal(long, java.lang.Integer):org.telegram.tgnet.TLRPC$TL_messages_stickerSet");
    }

    private void fetchStickerSetInternal(final TLRPC$InputStickerSet tLRPC$InputStickerSet, Utilities.Callback2<Boolean, TLRPC$TL_messages_stickerSet> callback2) {
        if (callback2 == null) {
            return;
        }
        ArrayList<Utilities.Callback2<Boolean, TLRPC$TL_messages_stickerSet>> arrayList = this.loadingStickerSets.get(tLRPC$InputStickerSet);
        if (arrayList != null && arrayList.size() > 0) {
            arrayList.add(callback2);
            return;
        }
        if (arrayList == null) {
            HashMap<TLRPC$InputStickerSet, ArrayList<Utilities.Callback2<Boolean, TLRPC$TL_messages_stickerSet>>> hashMap = this.loadingStickerSets;
            ArrayList<Utilities.Callback2<Boolean, TLRPC$TL_messages_stickerSet>> arrayList2 = new ArrayList<>();
            hashMap.put(tLRPC$InputStickerSet, arrayList2);
            arrayList = arrayList2;
        }
        arrayList.add(callback2);
        TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
        tLRPC$TL_messages_getStickerSet.stickerset = tLRPC$InputStickerSet;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda213
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$fetchStickerSetInternal$36(tLRPC$InputStickerSet, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchStickerSetInternal$36(final TLRPC$InputStickerSet tLRPC$InputStickerSet, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda103
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$fetchStickerSetInternal$35(tLRPC$InputStickerSet, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchStickerSetInternal$35(TLRPC$InputStickerSet tLRPC$InputStickerSet, TLObject tLObject) {
        ArrayList<Utilities.Callback2<Boolean, TLRPC$TL_messages_stickerSet>> arrayList = this.loadingStickerSets.get(tLRPC$InputStickerSet);
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (tLObject != null) {
                    arrayList.get(i).run(Boolean.TRUE, (TLRPC$TL_messages_stickerSet) tLObject);
                } else {
                    arrayList.get(i).run(Boolean.FALSE, null);
                }
            }
        }
        this.loadingStickerSets.remove(tLRPC$InputStickerSet);
    }

    private void loadGroupStickerSet(final TLRPC$StickerSet tLRPC$StickerSet, boolean z) {
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda106
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadGroupStickerSet$38(tLRPC$StickerSet);
                }
            });
            return;
        }
        TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
        TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
        tLRPC$TL_messages_getStickerSet.stickerset = tLRPC$TL_inputStickerSetID;
        tLRPC$TL_inputStickerSetID.f1625id = tLRPC$StickerSet.f1636id;
        tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet.access_hash;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda182
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadGroupStickerSet$40(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGroupStickerSet$38(TLRPC$StickerSet tLRPC$StickerSet) {
        TLRPC$StickerSet tLRPC$StickerSet2;
        NativeByteBuffer byteBufferValue;
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            SQLiteCursor queryFinalized = database.queryFinalized("SELECT document FROM web_recent_v3 WHERE id = 's_" + tLRPC$StickerSet.f1636id + "'", new Object[0]);
            final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = null;
            if (queryFinalized.next() && !queryFinalized.isNull(0) && (byteBufferValue = queryFinalized.byteBufferValue(0)) != null) {
                tLRPC$TL_messages_stickerSet = TLRPC$messages_StickerSet.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                byteBufferValue.reuse();
            }
            queryFinalized.dispose();
            if (tLRPC$TL_messages_stickerSet == null || (tLRPC$StickerSet2 = tLRPC$TL_messages_stickerSet.set) == null || tLRPC$StickerSet2.hash != tLRPC$StickerSet.hash) {
                loadGroupStickerSet(tLRPC$StickerSet, false);
            }
            if (tLRPC$TL_messages_stickerSet == null || tLRPC$TL_messages_stickerSet.set == null) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda119
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadGroupStickerSet$37(tLRPC$TL_messages_stickerSet);
                }
            });
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGroupStickerSet$37(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        this.groupStickerSets.put(tLRPC$TL_messages_stickerSet.set.f1636id, tLRPC$TL_messages_stickerSet);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tLRPC$TL_messages_stickerSet.set.f1636id), tLRPC$TL_messages_stickerSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGroupStickerSet$40(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda116
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadGroupStickerSet$39(tLRPC$TL_messages_stickerSet);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadGroupStickerSet$39(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        this.groupStickerSets.put(tLRPC$TL_messages_stickerSet.set.f1636id, tLRPC$TL_messages_stickerSet);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupStickersDidLoad, Long.valueOf(tLRPC$TL_messages_stickerSet.set.f1636id), tLRPC$TL_messages_stickerSet);
    }

    private void putSetToCache(final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda118
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putSetToCache$41(tLRPC$TL_messages_stickerSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putSetToCache$41(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        try {
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO web_recent_v3 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            executeFast.requery();
            executeFast.bindString(1, "s_" + tLRPC$TL_messages_stickerSet.set.f1636id);
            executeFast.bindInteger(2, 6);
            executeFast.bindString(3, "");
            executeFast.bindString(4, "");
            executeFast.bindString(5, "");
            executeFast.bindInteger(6, 0);
            executeFast.bindInteger(7, 0);
            executeFast.bindInteger(8, 0);
            executeFast.bindInteger(9, 0);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$TL_messages_stickerSet.getObjectSize());
            tLRPC$TL_messages_stickerSet.serializeToStream(nativeByteBuffer);
            executeFast.bindByteBuffer(10, nativeByteBuffer);
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public HashMap<String, ArrayList<TLRPC$Document>> getAllStickers() {
        return this.allStickers;
    }

    public HashMap<String, ArrayList<TLRPC$Document>> getAllStickersFeatured() {
        return this.allStickersFeatured;
    }

    public TLRPC$Document getEmojiAnimatedSticker(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String replace = charSequence.toString().replace("️", "");
        ArrayList<TLRPC$TL_messages_stickerSet> stickerSets = getStickerSets(4);
        int size = stickerSets.size();
        for (int i = 0; i < size; i++) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = stickerSets.get(i);
            int size2 = tLRPC$TL_messages_stickerSet.packs.size();
            for (int i2 = 0; i2 < size2; i2++) {
                TLRPC$TL_stickerPack tLRPC$TL_stickerPack = tLRPC$TL_messages_stickerSet.packs.get(i2);
                if (!tLRPC$TL_stickerPack.documents.isEmpty() && TextUtils.equals(tLRPC$TL_stickerPack.emoticon, replace)) {
                    return getStickerByIds(4).get(tLRPC$TL_stickerPack.documents.get(0).longValue());
                }
            }
        }
        return null;
    }

    public boolean canAddStickerToFavorites() {
        return (this.stickersLoaded[0] && this.stickerSets[0].size() < 5 && this.recentStickers[2].isEmpty()) ? false : true;
    }

    public ArrayList<TLRPC$TL_messages_stickerSet> getStickerSets(int i) {
        if (i == 3) {
            return this.stickerSets[2];
        }
        return this.stickerSets[i];
    }

    public LongSparseArray<TLRPC$Document> getStickerByIds(int i) {
        return this.stickersByIds[i];
    }

    public ArrayList<TLRPC$StickerSetCovered> getFeaturedStickerSets() {
        return this.featuredStickerSets[0];
    }

    public ArrayList<TLRPC$StickerSetCovered> getFeaturedEmojiSets() {
        return this.featuredStickerSets[1];
    }

    public ArrayList<Long> getUnreadStickerSets() {
        return this.unreadStickerSets[0];
    }

    public ArrayList<Long> getUnreadEmojiSets() {
        return this.unreadStickerSets[1];
    }

    public boolean areAllTrendingStickerSetsUnread(boolean z) {
        int size = this.featuredStickerSets[z ? 1 : 0].size();
        for (int i = 0; i < size; i++) {
            TLRPC$StickerSetCovered tLRPC$StickerSetCovered = this.featuredStickerSets[z ? 1 : 0].get(i);
            if (!isStickerPackInstalled(tLRPC$StickerSetCovered.set.f1636id) && ((!tLRPC$StickerSetCovered.covers.isEmpty() || tLRPC$StickerSetCovered.cover != null) && !this.unreadStickerSets[z ? 1 : 0].contains(Long.valueOf(tLRPC$StickerSetCovered.set.f1636id)))) {
                return false;
            }
        }
        return true;
    }

    public boolean isStickerPackInstalled(long j) {
        return isStickerPackInstalled(j, true);
    }

    public boolean isStickerPackInstalled(long j, boolean z) {
        return (this.installedStickerSetsById.indexOfKey(j) >= 0 || (z && this.installedForceStickerSetsById.contains(Long.valueOf(j)))) && !(z && this.uninstalledForceStickerSetsById.contains(Long.valueOf(j)));
    }

    public boolean isStickerPackUnread(boolean z, long j) {
        return this.unreadStickerSets[z ? 1 : 0].contains(Long.valueOf(j));
    }

    public boolean isStickerPackInstalled(String str) {
        return this.stickerSetsByName.containsKey(str);
    }

    public String getEmojiForSticker(long j) {
        String str = this.stickersByEmoji.get(j);
        return str != null ? str : "";
    }

    public static boolean canShowAttachMenuBotForTarget(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot, String str) {
        Iterator<TLRPC$AttachMenuPeerType> it = tLRPC$TL_attachMenuBot.peer_types.iterator();
        while (it.hasNext()) {
            TLRPC$AttachMenuPeerType next = it.next();
            if (((next instanceof TLRPC$TL_attachMenuPeerTypeSameBotPM) || (next instanceof TLRPC$TL_attachMenuPeerTypeBotPM)) && str.equals("bots")) {
                return true;
            }
            if ((next instanceof TLRPC$TL_attachMenuPeerTypeBroadcast) && str.equals("channels")) {
                return true;
            }
            if ((next instanceof TLRPC$TL_attachMenuPeerTypeChat) && str.equals("groups")) {
                return true;
            }
            if ((next instanceof TLRPC$TL_attachMenuPeerTypePM) && str.equals("users")) {
                return true;
            }
        }
        return false;
    }

    public static boolean canShowAttachMenuBot(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot, TLObject tLObject) {
        TLRPC$User tLRPC$User = tLObject instanceof TLRPC$User ? (TLRPC$User) tLObject : null;
        TLRPC$Chat tLRPC$Chat = tLObject instanceof TLRPC$Chat ? (TLRPC$Chat) tLObject : null;
        Iterator<TLRPC$AttachMenuPeerType> it = tLRPC$TL_attachMenuBot.peer_types.iterator();
        while (it.hasNext()) {
            TLRPC$AttachMenuPeerType next = it.next();
            if ((next instanceof TLRPC$TL_attachMenuPeerTypeSameBotPM) && tLRPC$User != null && tLRPC$User.bot && tLRPC$User.f1749id == tLRPC$TL_attachMenuBot.bot_id) {
                return true;
            }
            if ((next instanceof TLRPC$TL_attachMenuPeerTypeBotPM) && tLRPC$User != null && tLRPC$User.bot && tLRPC$User.f1749id != tLRPC$TL_attachMenuBot.bot_id) {
                return true;
            }
            if ((next instanceof TLRPC$TL_attachMenuPeerTypePM) && tLRPC$User != null && !tLRPC$User.bot) {
                return true;
            }
            if ((next instanceof TLRPC$TL_attachMenuPeerTypeChat) && tLRPC$Chat != null && !ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat)) {
                return true;
            }
            if ((next instanceof TLRPC$TL_attachMenuPeerTypeBroadcast) && tLRPC$Chat != null && ChatObject.isChannelAndNotMegaGroup(tLRPC$Chat)) {
                return true;
            }
        }
        return false;
    }

    public static TLRPC$TL_attachMenuBotIcon getAnimatedAttachMenuBotIcon(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot) {
        Iterator<TLRPC$TL_attachMenuBotIcon> it = tLRPC$TL_attachMenuBot.icons.iterator();
        while (it.hasNext()) {
            TLRPC$TL_attachMenuBotIcon next = it.next();
            if (next.name.equals(ATTACH_MENU_BOT_ANIMATED_ICON_KEY)) {
                return next;
            }
        }
        return null;
    }

    public static TLRPC$TL_attachMenuBotIcon getSideMenuBotIcon(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot) {
        Iterator<TLRPC$TL_attachMenuBotIcon> it = tLRPC$TL_attachMenuBot.icons.iterator();
        while (it.hasNext()) {
            TLRPC$TL_attachMenuBotIcon next = it.next();
            if (next.name.equals("android_side_menu_static")) {
                return next;
            }
        }
        return null;
    }

    public static TLRPC$TL_attachMenuBotIcon getStaticAttachMenuBotIcon(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot) {
        Iterator<TLRPC$TL_attachMenuBotIcon> it = tLRPC$TL_attachMenuBot.icons.iterator();
        while (it.hasNext()) {
            TLRPC$TL_attachMenuBotIcon next = it.next();
            if (next.name.equals(ATTACH_MENU_BOT_STATIC_ICON_KEY)) {
                return next;
            }
        }
        return null;
    }

    public static TLRPC$TL_attachMenuBotIcon getSideAttachMenuBotIcon(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot) {
        Iterator<TLRPC$TL_attachMenuBotIcon> it = tLRPC$TL_attachMenuBot.icons.iterator();
        while (it.hasNext()) {
            TLRPC$TL_attachMenuBotIcon next = it.next();
            if (next.name.equals("android_side_menu_static")) {
                return next;
            }
        }
        return null;
    }

    public static TLRPC$TL_attachMenuBotIcon getPlaceholderStaticAttachMenuBotIcon(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot) {
        Iterator<TLRPC$TL_attachMenuBotIcon> it = tLRPC$TL_attachMenuBot.icons.iterator();
        while (it.hasNext()) {
            TLRPC$TL_attachMenuBotIcon next = it.next();
            if (next.name.equals(ATTACH_MENU_BOT_PLACEHOLDER_STATIC_KEY)) {
                return next;
            }
        }
        return null;
    }

    public static long calcDocumentsHash(ArrayList<TLRPC$Document> arrayList) {
        return calcDocumentsHash(arrayList, 200);
    }

    public static long calcDocumentsHash(ArrayList<TLRPC$Document> arrayList, int i) {
        long j = 0;
        if (arrayList == null) {
            return 0L;
        }
        int min = Math.min(i, arrayList.size());
        for (int i2 = 0; i2 < min; i2++) {
            TLRPC$Document tLRPC$Document = arrayList.get(i2);
            if (tLRPC$Document != null) {
                j = calcHash(j, tLRPC$Document.f1610id);
            }
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001d, code lost:
        if (r6.recentStickersLoaded[r7] != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001f, code lost:
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
        if (r6.recentGifsLoaded != false) goto L54;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v14, types: [org.telegram.tgnet.TLRPC$TL_messages_getFavedStickers] */
    /* JADX WARN: Type inference failed for: r9v10, types: [org.telegram.tgnet.TLRPC$TL_messages_getStickers] */
    /* JADX WARN: Type inference failed for: r9v8, types: [org.telegram.tgnet.TLRPC$TL_messages_getStickers] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadRecents(final int r7, final boolean r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.loadRecents(int, boolean, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecents$43(final boolean z, final int i) {
        NativeByteBuffer byteBufferValue;
        int i2 = 7;
        if (z) {
            i2 = 2;
        } else if (i == 0) {
            i2 = 3;
        } else if (i == 1) {
            i2 = 4;
        } else if (i == 3) {
            i2 = 6;
        } else if (i != 5) {
            i2 = i == 7 ? 8 : 5;
        }
        try {
            SQLiteCursor queryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT document FROM web_recent_v3 WHERE type = " + i2 + " ORDER BY date DESC", new Object[0]);
            final ArrayList arrayList = new ArrayList();
            while (queryFinalized.next()) {
                if (!queryFinalized.isNull(0) && (byteBufferValue = queryFinalized.byteBufferValue(0)) != null) {
                    TLRPC$Document TLdeserialize = TLRPC$Document.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    if (TLdeserialize != null) {
                        arrayList.add(TLdeserialize);
                    }
                    byteBufferValue.reuse();
                }
            }
            queryFinalized.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda135
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadRecents$42(z, arrayList, i);
                }
            });
        } catch (Throwable th) {
            getMessagesStorage().checkSQLException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$loadRecents$42(boolean z, ArrayList arrayList, int i) {
        if (z) {
            this.recentGifs = arrayList;
            this.loadingRecentGifs = false;
            this.recentGifsLoaded = true;
        } else {
            this.recentStickers[i] = arrayList;
            this.loadingRecentStickers[i] = false;
            this.recentStickersLoaded[i] = true;
        }
        if (i == 3) {
            preloadNextGreetingsSticker();
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentDocumentsDidLoad, Boolean.valueOf(z), Integer.valueOf(i));
        loadRecents(i, z, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecents$44(int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        processLoadedRecentDocuments(i, tLObject instanceof TLRPC$TL_messages_savedGifs ? ((TLRPC$TL_messages_savedGifs) tLObject).gifs : null, true, 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecents$45(int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ArrayList<TLRPC$Document> arrayList;
        if (i == 3 || i == 7) {
            if (tLObject instanceof TLRPC$TL_messages_stickers) {
                arrayList = ((TLRPC$TL_messages_stickers) tLObject).stickers;
            }
            arrayList = null;
        } else if (i == 2) {
            if (tLObject instanceof TLRPC$TL_messages_favedStickers) {
                arrayList = ((TLRPC$TL_messages_favedStickers) tLObject).stickers;
            }
            arrayList = null;
        } else {
            if (tLObject instanceof TLRPC$TL_messages_recentStickers) {
                arrayList = ((TLRPC$TL_messages_recentStickers) tLObject).stickers;
            }
            arrayList = null;
        }
        processLoadedRecentDocuments(i, arrayList, false, 0, true);
    }

    private void preloadNextGreetingsSticker() {
        if (this.recentStickers[3].isEmpty()) {
            return;
        }
        ArrayList<TLRPC$Document>[] arrayListArr = this.recentStickers;
        this.greetingsSticker = arrayListArr[3].get(Utilities.random.nextInt(arrayListArr[3].size()));
        getFileLoader().loadFile(ImageLocation.getForDocument(this.greetingsSticker), this.greetingsSticker, null, 0, 1);
    }

    public TLRPC$Document getGreetingsSticker() {
        TLRPC$Document tLRPC$Document = this.greetingsSticker;
        preloadNextGreetingsSticker();
        return tLRPC$Document;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processLoadedRecentDocuments(final int i, final ArrayList<TLRPC$Document> arrayList, final boolean z, final int i2, final boolean z2) {
        if (arrayList != null) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda132
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedRecentDocuments$46(z, i, arrayList, z2, i2);
                }
            });
        }
        if (i2 == 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda131
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedRecentDocuments$47(z, i, arrayList);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedRecentDocuments$46(boolean z, int i, ArrayList arrayList, boolean z2, int i2) {
        int i3;
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            int i4 = 2;
            int i5 = 3;
            if (z) {
                i3 = getMessagesController().maxRecentGifsCount;
            } else {
                if (i != 3 && i != 7) {
                    if (i == 2) {
                        i3 = getMessagesController().maxFaveStickersCount;
                    } else {
                        i3 = getMessagesController().maxRecentStickersCount;
                    }
                }
                i3 = 200;
            }
            database.beginTransaction();
            SQLitePreparedStatement executeFast = database.executeFast("REPLACE INTO web_recent_v3 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            int size = arrayList.size();
            int i6 = z ? 2 : i == 0 ? 3 : i == 1 ? 4 : i == 3 ? 6 : i == 5 ? 7 : i == 7 ? 8 : 5;
            if (z2) {
                database.executeFast("DELETE FROM web_recent_v3 WHERE type = " + i6).stepThis().dispose();
            }
            int i7 = 0;
            while (i7 < size && i7 != i3) {
                TLRPC$Document tLRPC$Document = (TLRPC$Document) arrayList.get(i7);
                executeFast.requery();
                executeFast.bindString(1, "" + tLRPC$Document.f1610id);
                executeFast.bindInteger(i4, i6);
                executeFast.bindString(i5, "");
                executeFast.bindString(4, "");
                executeFast.bindString(5, "");
                executeFast.bindInteger(6, 0);
                executeFast.bindInteger(7, 0);
                executeFast.bindInteger(8, 0);
                executeFast.bindInteger(9, i2 != 0 ? i2 : size - i7);
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$Document.getObjectSize());
                tLRPC$Document.serializeToStream(nativeByteBuffer);
                executeFast.bindByteBuffer(10, nativeByteBuffer);
                executeFast.step();
                nativeByteBuffer.reuse();
                i7++;
                i4 = 2;
                i5 = 3;
            }
            executeFast.dispose();
            database.commitTransaction();
            if (arrayList.size() >= i3) {
                database.beginTransaction();
                while (i3 < arrayList.size()) {
                    database.executeFast("DELETE FROM web_recent_v3 WHERE id = '" + ((TLRPC$Document) arrayList.get(i3)).f1610id + "' AND type = " + i6).stepThis().dispose();
                    i3++;
                }
                database.commitTransaction();
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processLoadedRecentDocuments$47(boolean z, int i, ArrayList arrayList) {
        SharedPreferences.Editor edit = MessagesController.getEmojiSettings(this.currentAccount).edit();
        if (z) {
            this.loadingRecentGifs = false;
            this.recentGifsLoaded = true;
            edit.putLong("lastGifLoadTime", System.currentTimeMillis()).commit();
        } else {
            this.loadingRecentStickers[i] = false;
            this.recentStickersLoaded[i] = true;
            if (i == 0) {
                edit.putLong("lastStickersLoadTime", System.currentTimeMillis()).commit();
            } else if (i == 1) {
                edit.putLong("lastStickersLoadTimeMask", System.currentTimeMillis()).commit();
            } else if (i == 3) {
                edit.putLong("lastStickersLoadTimeGreet", System.currentTimeMillis()).commit();
            } else if (i == 5) {
                edit.putLong("lastStickersLoadTimeEmojiPacks", System.currentTimeMillis()).commit();
            } else if (i == 7) {
                edit.putLong("lastStickersLoadTimePremiumStickers", System.currentTimeMillis()).commit();
            } else {
                edit.putLong("lastStickersLoadTimeFavs", System.currentTimeMillis()).commit();
            }
        }
        if (arrayList != null) {
            if (z) {
                this.recentGifs = arrayList;
            } else {
                this.recentStickers[i] = arrayList;
            }
            if (i == 3) {
                preloadNextGreetingsSticker();
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentDocumentsDidLoad, Boolean.valueOf(z), Integer.valueOf(i));
        }
    }

    public void reorderStickers(int i, final ArrayList<Long> arrayList, boolean z) {
        Collections.sort(this.stickerSets[i], new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda159
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$reorderStickers$48;
                lambda$reorderStickers$48 = MediaDataController.lambda$reorderStickers$48(arrayList, (TLRPC$TL_messages_stickerSet) obj, (TLRPC$TL_messages_stickerSet) obj2);
                return lambda$reorderStickers$48;
            }
        });
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$reorderStickers$48(ArrayList arrayList, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2) {
        int indexOf = arrayList.indexOf(Long.valueOf(tLRPC$TL_messages_stickerSet.set.f1636id));
        int indexOf2 = arrayList.indexOf(Long.valueOf(tLRPC$TL_messages_stickerSet2.set.f1636id));
        if (indexOf > indexOf2) {
            return 1;
        }
        return indexOf < indexOf2 ? -1 : 0;
    }

    public void calcNewHash(int i) {
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
    }

    public void storeTempStickerSet(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        this.stickerSetsById.put(tLRPC$TL_messages_stickerSet.set.f1636id, tLRPC$TL_messages_stickerSet);
        this.stickerSetsByName.put(tLRPC$TL_messages_stickerSet.set.short_name, tLRPC$TL_messages_stickerSet);
    }

    public void addNewStickerSet(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        int i;
        if (this.stickerSetsById.indexOfKey(tLRPC$TL_messages_stickerSet.set.f1636id) >= 0 || this.stickerSetsByName.containsKey(tLRPC$TL_messages_stickerSet.set.short_name)) {
            return;
        }
        TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
        if (tLRPC$StickerSet.masks) {
            i = 1;
        } else {
            i = tLRPC$StickerSet.emojis ? 5 : 0;
        }
        this.stickerSets[i].add(0, tLRPC$TL_messages_stickerSet);
        this.stickerSetsById.put(tLRPC$TL_messages_stickerSet.set.f1636id, tLRPC$TL_messages_stickerSet);
        this.installedStickerSetsById.put(tLRPC$TL_messages_stickerSet.set.f1636id, tLRPC$TL_messages_stickerSet);
        this.stickerSetsByName.put(tLRPC$TL_messages_stickerSet.set.short_name, tLRPC$TL_messages_stickerSet);
        LongSparseArray longSparseArray = new LongSparseArray();
        for (int i2 = 0; i2 < tLRPC$TL_messages_stickerSet.documents.size(); i2++) {
            TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(i2);
            longSparseArray.put(tLRPC$Document.f1610id, tLRPC$Document);
        }
        for (int i3 = 0; i3 < tLRPC$TL_messages_stickerSet.packs.size(); i3++) {
            TLRPC$TL_stickerPack tLRPC$TL_stickerPack = tLRPC$TL_messages_stickerSet.packs.get(i3);
            String replace = tLRPC$TL_stickerPack.emoticon.replace("️", "");
            tLRPC$TL_stickerPack.emoticon = replace;
            ArrayList<TLRPC$Document> arrayList = this.allStickers.get(replace);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.allStickers.put(tLRPC$TL_stickerPack.emoticon, arrayList);
            }
            for (int i4 = 0; i4 < tLRPC$TL_stickerPack.documents.size(); i4++) {
                Long l = tLRPC$TL_stickerPack.documents.get(i4);
                if (this.stickersByEmoji.indexOfKey(l.longValue()) < 0) {
                    this.stickersByEmoji.put(l.longValue(), tLRPC$TL_stickerPack.emoticon);
                }
                TLRPC$Document tLRPC$Document2 = (TLRPC$Document) longSparseArray.get(l.longValue());
                if (tLRPC$Document2 != null) {
                    arrayList.add(tLRPC$Document2);
                }
            }
        }
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
        loadStickers(i, false, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void loadFeaturedStickers(final boolean z, boolean z2, boolean z3) {
        final long j;
        TLRPC$TL_messages_getFeaturedStickers tLRPC$TL_messages_getFeaturedStickers;
        boolean[] zArr = this.loadingFeaturedStickers;
        if (zArr[z ? 1 : 0]) {
            return;
        }
        zArr[z ? 1 : 0] = true;
        if (z2) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda127
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadFeaturedStickers$49(z);
                }
            });
            return;
        }
        if (z) {
            TLRPC$TL_messages_getFeaturedEmojiStickers tLRPC$TL_messages_getFeaturedEmojiStickers = new TLRPC$TL_messages_getFeaturedEmojiStickers();
            j = z3 ? 0L : this.loadFeaturedHash[1];
            tLRPC$TL_messages_getFeaturedEmojiStickers.hash = j;
            tLRPC$TL_messages_getFeaturedStickers = tLRPC$TL_messages_getFeaturedEmojiStickers;
        } else {
            TLRPC$TL_messages_getFeaturedStickers tLRPC$TL_messages_getFeaturedStickers2 = new TLRPC$TL_messages_getFeaturedStickers();
            j = z3 ? 0L : this.loadFeaturedHash[0];
            tLRPC$TL_messages_getFeaturedStickers2.hash = j;
            tLRPC$TL_messages_getFeaturedStickers = tLRPC$TL_messages_getFeaturedStickers2;
        }
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getFeaturedStickers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda219
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadFeaturedStickers$51(z, j, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadFeaturedStickers$49(boolean r15) {
        /*
            r14 = this;
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r0 = 0
            r1 = 0
            r4 = 0
            org.telegram.messenger.MessagesStorage r2 = r14.getMessagesStorage()     // Catch: java.lang.Throwable -> La1
            org.telegram.SQLite.SQLiteDatabase r2 = r2.getDatabase()     // Catch: java.lang.Throwable -> La1
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La1
            r6.<init>()     // Catch: java.lang.Throwable -> La1
            java.lang.String r7 = "SELECT data, unread, date, hash, premium FROM stickers_featured WHERE emoji = "
            r6.append(r7)     // Catch: java.lang.Throwable -> La1
            r7 = 1
            if (r15 == 0) goto L20
            r8 = r7
            goto L21
        L20:
            r8 = r1
        L21:
            r6.append(r8)     // Catch: java.lang.Throwable -> La1
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> La1
            java.lang.Object[] r8 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> La1
            org.telegram.SQLite.SQLiteCursor r2 = r2.queryFinalized(r6, r8)     // Catch: java.lang.Throwable -> La1
            boolean r6 = r2.next()     // Catch: java.lang.Throwable -> L9c
            if (r6 == 0) goto L93
            org.telegram.tgnet.NativeByteBuffer r6 = r2.byteBufferValue(r1)     // Catch: java.lang.Throwable -> L9c
            if (r6 == 0) goto L5b
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9c
            r8.<init>()     // Catch: java.lang.Throwable -> L9c
            int r0 = r6.readInt32(r1)     // Catch: java.lang.Throwable -> L59
            r9 = r1
        L44:
            if (r9 >= r0) goto L54
            int r10 = r6.readInt32(r1)     // Catch: java.lang.Throwable -> L59
            org.telegram.tgnet.TLRPC$StickerSetCovered r10 = org.telegram.tgnet.TLRPC$StickerSetCovered.TLdeserialize(r6, r10, r1)     // Catch: java.lang.Throwable -> L59
            r8.add(r10)     // Catch: java.lang.Throwable -> L59
            int r9 = r9 + 1
            goto L44
        L54:
            r6.reuse()     // Catch: java.lang.Throwable -> L59
            r0 = r8
            goto L5b
        L59:
            r0 = move-exception
            goto L9f
        L5b:
            org.telegram.tgnet.NativeByteBuffer r6 = r2.byteBufferValue(r7)     // Catch: java.lang.Throwable -> L9c
            if (r6 == 0) goto L79
            int r8 = r6.readInt32(r1)     // Catch: java.lang.Throwable -> L9c
            r9 = r1
        L66:
            if (r9 >= r8) goto L76
            long r10 = r6.readInt64(r1)     // Catch: java.lang.Throwable -> L9c
            java.lang.Long r10 = java.lang.Long.valueOf(r10)     // Catch: java.lang.Throwable -> L9c
            r3.add(r10)     // Catch: java.lang.Throwable -> L9c
            int r9 = r9 + 1
            goto L66
        L76:
            r6.reuse()     // Catch: java.lang.Throwable -> L9c
        L79:
            r6 = 2
            int r6 = r2.intValue(r6)     // Catch: java.lang.Throwable -> L9c
            long r4 = r14.calcFeaturedStickersHash(r15, r0)     // Catch: java.lang.Throwable -> L8f
            r8 = 4
            int r8 = r2.intValue(r8)     // Catch: java.lang.Throwable -> L8f
            if (r8 != r7) goto L8a
            r1 = r7
        L8a:
            r12 = r4
            r4 = r1
            r1 = r6
            r5 = r12
            goto L95
        L8f:
            r7 = move-exception
            r8 = r0
            r0 = r7
            goto La6
        L93:
            r5 = r4
            r4 = r1
        L95:
            r2.dispose()
            r2 = r0
            r7 = r5
            r6 = r1
            goto Lb1
        L9c:
            r6 = move-exception
            r8 = r0
            r0 = r6
        L9f:
            r6 = r1
            goto La6
        La1:
            r2 = move-exception
            r8 = r0
            r6 = r1
            r0 = r2
            r2 = r8
        La6:
            org.telegram.messenger.FileLog.m99e(r0)     // Catch: java.lang.Throwable -> Lb8
            if (r2 == 0) goto Lae
            r2.dispose()
        Lae:
            r2 = r8
            r7 = r4
            r4 = r1
        Lb1:
            r5 = 1
            r0 = r14
            r1 = r15
            r0.processLoadedFeaturedStickers(r1, r2, r3, r4, r5, r6, r7)
            return
        Lb8:
            r15 = move-exception
            if (r2 == 0) goto Lbe
            r2.dispose()
        Lbe:
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$loadFeaturedStickers$49(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFeaturedStickers$51(final boolean z, final long j, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda97
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadFeaturedStickers$50(tLObject, z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFeaturedStickers$50(TLObject tLObject, boolean z, long j) {
        if (tLObject instanceof TLRPC$TL_messages_featuredStickers) {
            TLRPC$TL_messages_featuredStickers tLRPC$TL_messages_featuredStickers = (TLRPC$TL_messages_featuredStickers) tLObject;
            processLoadedFeaturedStickers(z, tLRPC$TL_messages_featuredStickers.sets, tLRPC$TL_messages_featuredStickers.unread, tLRPC$TL_messages_featuredStickers.premium, false, (int) (System.currentTimeMillis() / 1000), tLRPC$TL_messages_featuredStickers.hash);
            return;
        }
        processLoadedFeaturedStickers(z, null, null, false, false, (int) (System.currentTimeMillis() / 1000), j);
    }

    private void processLoadedFeaturedStickers(final boolean z, final ArrayList<TLRPC$StickerSetCovered> arrayList, final ArrayList<Long> arrayList2, final boolean z2, final boolean z3, final int i, final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda128
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedFeaturedStickers$52(z);
            }
        });
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda137
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedFeaturedStickers$56(z3, arrayList, i, j, z, arrayList2, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$52(boolean z) {
        this.loadingFeaturedStickers[z ? 1 : 0] = false;
        this.featuredStickersLoaded[z ? 1 : 0] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$56(boolean z, final ArrayList arrayList, final int i, final long j, final boolean z2, final ArrayList arrayList2, final boolean z3) {
        long j2 = 0;
        if ((z && (arrayList == null || Math.abs((System.currentTimeMillis() / 1000) - i) >= 3600)) || (!z && arrayList == null && j == 0)) {
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedFeaturedStickers$53(arrayList, j, z2);
                }
            };
            if (arrayList == null && !z) {
                j2 = 1000;
            }
            AndroidUtilities.runOnUIThread(runnable, j2);
            if (arrayList == null) {
                return;
            }
        }
        if (arrayList != null) {
            try {
                final ArrayList<TLRPC$StickerSetCovered> arrayList3 = new ArrayList<>();
                final LongSparseArray longSparseArray = new LongSparseArray();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    TLRPC$StickerSetCovered tLRPC$StickerSetCovered = (TLRPC$StickerSetCovered) arrayList.get(i2);
                    arrayList3.add(tLRPC$StickerSetCovered);
                    longSparseArray.put(tLRPC$StickerSetCovered.set.f1636id, tLRPC$StickerSetCovered);
                }
                if (!z) {
                    putFeaturedStickersToCache(z2, arrayList3, arrayList2, i, j, z3);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda139
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.this.lambda$processLoadedFeaturedStickers$54(z2, arrayList2, longSparseArray, arrayList3, j, i, z3);
                    }
                });
            } catch (Throwable th) {
                FileLog.m99e(th);
            }
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda130
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedFeaturedStickers$55(z2, i);
            }
        });
        putFeaturedStickersToCache(z2, null, null, i, 0L, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$53(ArrayList arrayList, long j, boolean z) {
        if (arrayList != null && j != 0) {
            this.loadFeaturedHash[z ? 1 : 0] = j;
        }
        this.loadingFeaturedStickers[z ? 1 : 0] = false;
        loadFeaturedStickers(z, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$54(boolean z, ArrayList arrayList, LongSparseArray longSparseArray, ArrayList arrayList2, long j, int i, boolean z2) {
        this.unreadStickerSets[z ? 1 : 0] = arrayList;
        this.featuredStickerSetsById[z ? 1 : 0] = longSparseArray;
        this.featuredStickerSets[z ? 1 : 0] = arrayList2;
        this.loadFeaturedHash[z ? 1 : 0] = j;
        this.loadFeaturedDate[z ? 1 : 0] = i;
        this.loadFeaturedPremium = z2;
        loadStickers(z ? 6 : 3, true, false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.featuredEmojiDidLoad : NotificationCenter.featuredStickersDidLoad, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedFeaturedStickers$55(boolean z, int i) {
        this.loadFeaturedDate[z ? 1 : 0] = i;
    }

    private void putFeaturedStickersToCache(final boolean z, ArrayList<TLRPC$StickerSetCovered> arrayList, final ArrayList<Long> arrayList2, final int i, final long j, final boolean z2) {
        final ArrayList arrayList3 = arrayList != null ? new ArrayList(arrayList) : null;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putFeaturedStickersToCache$57(arrayList3, arrayList2, i, j, z2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putFeaturedStickersToCache$57(ArrayList arrayList, ArrayList arrayList2, int i, long j, boolean z, boolean z2) {
        int i2 = 1;
        try {
            if (arrayList != null) {
                SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO stickers_featured VALUES(?, ?, ?, ?, ?, ?, ?)");
                executeFast.requery();
                int i3 = 4;
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    i3 += ((TLRPC$StickerSetCovered) arrayList.get(i4)).getObjectSize();
                }
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(i3);
                NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer((arrayList2.size() * 8) + 4);
                nativeByteBuffer.writeInt32(arrayList.size());
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    ((TLRPC$StickerSetCovered) arrayList.get(i5)).serializeToStream(nativeByteBuffer);
                }
                nativeByteBuffer2.writeInt32(arrayList2.size());
                for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                    nativeByteBuffer2.writeInt64(((Long) arrayList2.get(i6)).longValue());
                }
                executeFast.bindInteger(1, 1);
                executeFast.bindByteBuffer(2, nativeByteBuffer);
                executeFast.bindByteBuffer(3, nativeByteBuffer2);
                executeFast.bindInteger(4, i);
                executeFast.bindLong(5, j);
                executeFast.bindInteger(6, z ? 1 : 0);
                if (!z2) {
                    i2 = 0;
                }
                executeFast.bindInteger(7, i2);
                executeFast.step();
                nativeByteBuffer.reuse();
                nativeByteBuffer2.reuse();
                executeFast.dispose();
                return;
            }
            SQLitePreparedStatement executeFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE stickers_featured SET date = ?");
            executeFast2.requery();
            executeFast2.bindInteger(1, i);
            executeFast2.step();
            executeFast2.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private long calcFeaturedStickersHash(boolean z, ArrayList<TLRPC$StickerSetCovered> arrayList) {
        long j = 0;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC$StickerSet tLRPC$StickerSet = arrayList.get(i).set;
                if (!tLRPC$StickerSet.archived) {
                    j = calcHash(j, tLRPC$StickerSet.f1636id);
                    if (this.unreadStickerSets[z ? 1 : 0].contains(Long.valueOf(tLRPC$StickerSet.f1636id))) {
                        j = calcHash(j, 1L);
                    }
                }
            }
        }
        return j;
    }

    public void markFeaturedStickersAsRead(boolean z, boolean z2) {
        if (this.unreadStickerSets[z ? 1 : 0].isEmpty()) {
            return;
        }
        this.unreadStickerSets[z ? 1 : 0].clear();
        this.loadFeaturedHash[z ? 1 : 0] = calcFeaturedStickersHash(z, this.featuredStickerSets[z ? 1 : 0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.featuredEmojiDidLoad : NotificationCenter.featuredStickersDidLoad, new Object[0]);
        putFeaturedStickersToCache(z, this.featuredStickerSets[z ? 1 : 0], this.unreadStickerSets[z ? 1 : 0], this.loadFeaturedDate[z ? 1 : 0], this.loadFeaturedHash[z ? 1 : 0], this.loadFeaturedPremium);
        if (z2) {
            getConnectionsManager().sendRequest(new TLRPC$TL_messages_readFeaturedStickers(), new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda223
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    MediaDataController.lambda$markFeaturedStickersAsRead$58(tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    public long getFeaturedStickersHashWithoutUnread(boolean z) {
        long j = 0;
        for (int i = 0; i < this.featuredStickerSets[z ? 1 : 0].size(); i++) {
            TLRPC$StickerSet tLRPC$StickerSet = this.featuredStickerSets[z ? 1 : 0].get(i).set;
            if (!tLRPC$StickerSet.archived) {
                j = calcHash(j, tLRPC$StickerSet.f1636id);
            }
        }
        return j;
    }

    public void markFeaturedStickersByIdAsRead(final boolean z, final long j) {
        if (!this.unreadStickerSets[z ? 1 : 0].contains(Long.valueOf(j)) || this.readingStickerSets[z ? 1 : 0].contains(Long.valueOf(j))) {
            return;
        }
        this.readingStickerSets[z ? 1 : 0].add(Long.valueOf(j));
        TLRPC$TL_messages_readFeaturedStickers tLRPC$TL_messages_readFeaturedStickers = new TLRPC$TL_messages_readFeaturedStickers();
        tLRPC$TL_messages_readFeaturedStickers.f1705id.add(Long.valueOf(j));
        getConnectionsManager().sendRequest(tLRPC$TL_messages_readFeaturedStickers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda224
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.lambda$markFeaturedStickersByIdAsRead$59(tLObject, tLRPC$TL_error);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda133
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$markFeaturedStickersByIdAsRead$60(z, j);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markFeaturedStickersByIdAsRead$60(boolean z, long j) {
        this.unreadStickerSets[z ? 1 : 0].remove(Long.valueOf(j));
        this.readingStickerSets[z ? 1 : 0].remove(Long.valueOf(j));
        this.loadFeaturedHash[z ? 1 : 0] = calcFeaturedStickersHash(z, this.featuredStickerSets[z ? 1 : 0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(z ? NotificationCenter.featuredEmojiDidLoad : NotificationCenter.featuredStickersDidLoad, new Object[0]);
        putFeaturedStickersToCache(z, this.featuredStickerSets[z ? 1 : 0], this.unreadStickerSets[z ? 1 : 0], this.loadFeaturedDate[z ? 1 : 0], this.loadFeaturedHash[z ? 1 : 0], this.loadFeaturedPremium);
    }

    public int getArchivedStickersCount(int i) {
        return this.archivedStickersCount[i];
    }

    public void verifyAnimatedStickerMessage(TLRPC$Message tLRPC$Message) {
        verifyAnimatedStickerMessage(tLRPC$Message, false);
    }

    public void verifyAnimatedStickerMessage(final TLRPC$Message tLRPC$Message, boolean z) {
        if (tLRPC$Message == null) {
            return;
        }
        TLRPC$Document document = MessageObject.getDocument(tLRPC$Message);
        final String stickerSetName = MessageObject.getStickerSetName(document);
        if (TextUtils.isEmpty(stickerSetName)) {
            return;
        }
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = this.stickerSetsByName.get(stickerSetName);
        if (tLRPC$TL_messages_stickerSet == null) {
            if (z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda104
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.this.lambda$verifyAnimatedStickerMessage$61(tLRPC$Message, stickerSetName);
                    }
                });
                return;
            } else {
                lambda$verifyAnimatedStickerMessage$61(tLRPC$Message, stickerSetName);
                return;
            }
        }
        int size = tLRPC$TL_messages_stickerSet.documents.size();
        for (int i = 0; i < size; i++) {
            TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(i);
            if (tLRPC$Document.f1610id == document.f1610id && tLRPC$Document.dc_id == document.dc_id) {
                tLRPC$Message.stickerVerified = 1;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: verifyAnimatedStickerMessageInternal */
    public void lambda$verifyAnimatedStickerMessage$61(TLRPC$Message tLRPC$Message, final String str) {
        ArrayList<TLRPC$Message> arrayList = this.verifyingMessages.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.verifyingMessages.put(str, arrayList);
        }
        arrayList.add(tLRPC$Message);
        TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
        tLRPC$TL_messages_getStickerSet.stickerset = MessageObject.getInputStickerSet(tLRPC$Message);
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda208
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$verifyAnimatedStickerMessageInternal$63(str, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$verifyAnimatedStickerMessageInternal$63(final String str, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$verifyAnimatedStickerMessageInternal$62(str, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$verifyAnimatedStickerMessageInternal$62(String str, TLObject tLObject) {
        ArrayList<TLRPC$Message> arrayList = this.verifyingMessages.get(str);
        if (tLObject != null) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) tLObject;
            storeTempStickerSet(tLRPC$TL_messages_stickerSet);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC$Message tLRPC$Message = arrayList.get(i);
                TLRPC$Document document = MessageObject.getDocument(tLRPC$Message);
                int size2 = tLRPC$TL_messages_stickerSet.documents.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size2) {
                        break;
                    }
                    TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(i2);
                    if (tLRPC$Document.f1610id == document.f1610id && tLRPC$Document.dc_id == document.dc_id) {
                        tLRPC$Message.stickerVerified = 1;
                        break;
                    }
                    i2++;
                }
                if (tLRPC$Message.stickerVerified == 0) {
                    tLRPC$Message.stickerVerified = 2;
                }
            }
        } else {
            int size3 = arrayList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                arrayList.get(i3).stickerVerified = 2;
            }
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didVerifyMessagesStickers, arrayList);
        getMessagesStorage().updateMessageVerifyFlags(arrayList);
    }

    public void loadArchivedStickersCount(final int i, boolean z) {
        if (z) {
            SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
            int i2 = notificationsSettings.getInt("archivedStickersCount" + i, -1);
            if (i2 == -1) {
                loadArchivedStickersCount(i, false);
                return;
            }
            this.archivedStickersCount[i] = i2;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.archivedStickersCountDidLoad, Integer.valueOf(i));
            return;
        }
        TLRPC$TL_messages_getArchivedStickers tLRPC$TL_messages_getArchivedStickers = new TLRPC$TL_messages_getArchivedStickers();
        tLRPC$TL_messages_getArchivedStickers.limit = 0;
        tLRPC$TL_messages_getArchivedStickers.masks = i == 1;
        tLRPC$TL_messages_getArchivedStickers.emojis = i == 5;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getArchivedStickers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda186
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadArchivedStickersCount$65(i, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadArchivedStickersCount$65(final int i, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda114
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadArchivedStickersCount$64(tLRPC$TL_error, tLObject, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadArchivedStickersCount$64(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, int i) {
        if (tLRPC$TL_error == null) {
            TLRPC$TL_messages_archivedStickers tLRPC$TL_messages_archivedStickers = (TLRPC$TL_messages_archivedStickers) tLObject;
            this.archivedStickersCount[i] = tLRPC$TL_messages_archivedStickers.count;
            SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
            edit.putInt("archivedStickersCount" + i, tLRPC$TL_messages_archivedStickers.count).commit();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.archivedStickersCountDidLoad, Integer.valueOf(i));
        }
    }

    private void processLoadStickersResponse(int i, TLRPC$TL_messages_allStickers tLRPC$TL_messages_allStickers) {
        processLoadStickersResponse(i, tLRPC$TL_messages_allStickers, null);
    }

    private void processLoadStickersResponse(final int i, final TLRPC$TL_messages_allStickers tLRPC$TL_messages_allStickers, Runnable runnable) {
        final ArrayList<TLRPC$TL_messages_stickerSet> arrayList = new ArrayList<>();
        long j = 1000;
        if (tLRPC$TL_messages_allStickers.sets.isEmpty()) {
            processLoadedStickers(i, arrayList, false, (int) (System.currentTimeMillis() / 1000), tLRPC$TL_messages_allStickers.hash2, runnable);
            return;
        }
        final LongSparseArray longSparseArray = new LongSparseArray();
        int i2 = 0;
        while (i2 < tLRPC$TL_messages_allStickers.sets.size()) {
            final TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_allStickers.sets.get(i2);
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = this.stickerSetsById.get(tLRPC$StickerSet.f1636id);
            if (tLRPC$TL_messages_stickerSet != null) {
                TLRPC$StickerSet tLRPC$StickerSet2 = tLRPC$TL_messages_stickerSet.set;
                if (tLRPC$StickerSet2.hash == tLRPC$StickerSet.hash) {
                    tLRPC$StickerSet2.archived = tLRPC$StickerSet.archived;
                    tLRPC$StickerSet2.installed = tLRPC$StickerSet.installed;
                    tLRPC$StickerSet2.official = tLRPC$StickerSet.official;
                    longSparseArray.put(tLRPC$StickerSet2.f1636id, tLRPC$TL_messages_stickerSet);
                    arrayList.add(tLRPC$TL_messages_stickerSet);
                    if (longSparseArray.size() == tLRPC$TL_messages_allStickers.sets.size()) {
                        processLoadedStickers(i, arrayList, false, (int) (System.currentTimeMillis() / j), tLRPC$TL_messages_allStickers.hash2);
                    }
                    i2++;
                    j = 1000;
                }
            }
            arrayList.add(null);
            TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
            TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
            tLRPC$TL_messages_getStickerSet.stickerset = tLRPC$TL_inputStickerSetID;
            tLRPC$TL_inputStickerSetID.f1625id = tLRPC$StickerSet.f1636id;
            tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet.access_hash;
            final int i3 = i2;
            getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda210
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    MediaDataController.this.lambda$processLoadStickersResponse$67(arrayList, i3, longSparseArray, tLRPC$StickerSet, tLRPC$TL_messages_allStickers, i, tLObject, tLRPC$TL_error);
                }
            });
            i2++;
            j = 1000;
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadStickersResponse$67(final ArrayList arrayList, final int i, final LongSparseArray longSparseArray, final TLRPC$StickerSet tLRPC$StickerSet, final TLRPC$TL_messages_allStickers tLRPC$TL_messages_allStickers, final int i2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda95
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadStickersResponse$66(tLObject, arrayList, i, longSparseArray, tLRPC$StickerSet, tLRPC$TL_messages_allStickers, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadStickersResponse$66(TLObject tLObject, ArrayList arrayList, int i, LongSparseArray longSparseArray, TLRPC$StickerSet tLRPC$StickerSet, TLRPC$TL_messages_allStickers tLRPC$TL_messages_allStickers, int i2) {
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) tLObject;
        arrayList.set(i, tLRPC$TL_messages_stickerSet);
        longSparseArray.put(tLRPC$StickerSet.f1636id, tLRPC$TL_messages_stickerSet);
        if (longSparseArray.size() == tLRPC$TL_messages_allStickers.sets.size()) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                if (arrayList.get(i3) == null) {
                    arrayList.remove(i3);
                    i3--;
                }
                i3++;
            }
            processLoadedStickers(i2, arrayList, false, (int) (System.currentTimeMillis() / 1000), tLRPC$TL_messages_allStickers.hash2);
        }
    }

    public void checkPremiumGiftStickers() {
        if (getUserConfig().premiumGiftsStickerPack != null) {
            String str = getUserConfig().premiumGiftsStickerPack;
            TLRPC$TL_messages_stickerSet stickerSetByName = getStickerSetByName(str);
            if (stickerSetByName == null) {
                stickerSetByName = getStickerSetByEmojiOrName(str);
            }
            if (stickerSetByName == null) {
                getInstance(this.currentAccount).loadStickersByEmojiOrName(str, false, true);
            }
        }
        if (this.loadingPremiumGiftStickers || System.currentTimeMillis() - getUserConfig().lastUpdatedPremiumGiftsStickerPack < 86400000) {
            return;
        }
        this.loadingPremiumGiftStickers = true;
        TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
        tLRPC$TL_messages_getStickerSet.stickerset = new TLRPC$TL_inputStickerSetPremiumGifts();
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda176
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$checkPremiumGiftStickers$69(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPremiumGiftStickers$69(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda87
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$checkPremiumGiftStickers$68(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkPremiumGiftStickers$68(TLObject tLObject) {
        if (tLObject instanceof TLRPC$TL_messages_stickerSet) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) tLObject;
            getUserConfig().premiumGiftsStickerPack = tLRPC$TL_messages_stickerSet.set.short_name;
            getUserConfig().lastUpdatedPremiumGiftsStickerPack = System.currentTimeMillis();
            getUserConfig().saveConfig(false);
            processLoadedDiceStickers(getUserConfig().premiumGiftsStickerPack, false, tLRPC$TL_messages_stickerSet, false, (int) (System.currentTimeMillis() / 1000));
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdatePremiumGiftStickers, new Object[0]);
        }
    }

    public void checkGenericAnimations() {
        if (getUserConfig().genericAnimationsStickerPack != null) {
            String str = getUserConfig().genericAnimationsStickerPack;
            TLRPC$TL_messages_stickerSet stickerSetByName = getStickerSetByName(str);
            if (stickerSetByName == null) {
                stickerSetByName = getStickerSetByEmojiOrName(str);
            }
            if (stickerSetByName == null) {
                getInstance(this.currentAccount).loadStickersByEmojiOrName(str, false, true);
            }
        }
        if (this.loadingGenericAnimations || System.currentTimeMillis() - getUserConfig().lastUpdatedGenericAnimations < 86400000) {
            return;
        }
        this.loadingGenericAnimations = true;
        TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
        tLRPC$TL_messages_getStickerSet.stickerset = new TLRPC$TL_inputStickerSetEmojiGenericAnimations();
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda179
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$checkGenericAnimations$71(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkGenericAnimations$71(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$checkGenericAnimations$70(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkGenericAnimations$70(TLObject tLObject) {
        if (tLObject instanceof TLRPC$TL_messages_stickerSet) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) tLObject;
            getUserConfig().genericAnimationsStickerPack = tLRPC$TL_messages_stickerSet.set.short_name;
            getUserConfig().lastUpdatedGenericAnimations = System.currentTimeMillis();
            getUserConfig().saveConfig(false);
            processLoadedDiceStickers(getUserConfig().genericAnimationsStickerPack, false, tLRPC$TL_messages_stickerSet, false, (int) (System.currentTimeMillis() / 1000));
            for (int i = 0; i < tLRPC$TL_messages_stickerSet.documents.size(); i++) {
                if (this.currentAccount == UserConfig.selectedAccount) {
                    preloadImage(ImageLocation.getForDocument(tLRPC$TL_messages_stickerSet.documents.get(i)), 0);
                }
            }
        }
    }

    public void checkDefaultTopicIcons() {
        if (getUserConfig().defaultTopicIcons != null) {
            String str = getUserConfig().defaultTopicIcons;
            TLRPC$TL_messages_stickerSet stickerSetByName = getStickerSetByName(str);
            if (stickerSetByName == null) {
                stickerSetByName = getStickerSetByEmojiOrName(str);
            }
            if (stickerSetByName == null) {
                getInstance(this.currentAccount).loadStickersByEmojiOrName(str, false, true);
            }
        }
        if (this.loadingDefaultTopicIcons || System.currentTimeMillis() - getUserConfig().lastUpdatedDefaultTopicIcons < 86400000) {
            return;
        }
        this.loadingDefaultTopicIcons = true;
        TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
        tLRPC$TL_messages_getStickerSet.stickerset = new TLRPC$TL_inputStickerSetEmojiDefaultTopicIcons();
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda175
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$checkDefaultTopicIcons$73(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDefaultTopicIcons$73(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$checkDefaultTopicIcons$72(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDefaultTopicIcons$72(TLObject tLObject) {
        if (tLObject instanceof TLRPC$TL_messages_stickerSet) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) tLObject;
            getUserConfig().defaultTopicIcons = tLRPC$TL_messages_stickerSet.set.short_name;
            getUserConfig().lastUpdatedDefaultTopicIcons = System.currentTimeMillis();
            getUserConfig().saveConfig(false);
            processLoadedDiceStickers(getUserConfig().defaultTopicIcons, false, tLRPC$TL_messages_stickerSet, false, (int) (System.currentTimeMillis() / 1000));
        }
    }

    public void loadStickersByEmojiOrName(final String str, final boolean z, boolean z2, final MessagesStorage.BooleanCallback booleanCallback) {
        if (this.loadingDiceStickerSets.contains(str) || (z && this.diceStickerSetsByEmoji.get(str) != null)) {
            if (booleanCallback != null) {
                booleanCallback.run(false);
                return;
            }
            return;
        }
        this.loadingDiceStickerSets.add(str);
        if (z2) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadStickersByEmojiOrName$74(str, z, booleanCallback);
                }
            });
            return;
        }
        TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
        if (Objects.equals(getUserConfig().premiumGiftsStickerPack, str)) {
            tLRPC$TL_messages_getStickerSet.stickerset = new TLRPC$TL_inputStickerSetPremiumGifts();
        } else if (z) {
            TLRPC$TL_inputStickerSetDice tLRPC$TL_inputStickerSetDice = new TLRPC$TL_inputStickerSetDice();
            tLRPC$TL_inputStickerSetDice.emoticon = str;
            tLRPC$TL_messages_getStickerSet.stickerset = tLRPC$TL_inputStickerSetDice;
        } else {
            TLRPC$TL_inputStickerSetShortName tLRPC$TL_inputStickerSetShortName = new TLRPC$TL_inputStickerSetShortName();
            tLRPC$TL_inputStickerSetShortName.short_name = str;
            tLRPC$TL_messages_getStickerSet.stickerset = tLRPC$TL_inputStickerSetShortName;
        }
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda211
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadStickersByEmojiOrName$76(booleanCallback, str, z, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickersByEmojiOrName$74(String str, boolean z, MessagesStorage.BooleanCallback booleanCallback) {
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet;
        int i;
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2;
        SQLiteCursor sQLiteCursor = null;
        r0 = null;
        r0 = null;
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet3 = null;
        int i2 = 0;
        try {
            SQLiteCursor queryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT data, date FROM stickers_dice WHERE emoji = ?", str);
            try {
                if (queryFinalized.next()) {
                    NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                    if (byteBufferValue != null) {
                        tLRPC$TL_messages_stickerSet3 = TLRPC$messages_StickerSet.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                        byteBufferValue.reuse();
                    }
                    i2 = queryFinalized.intValue(1);
                }
                queryFinalized.dispose();
                tLRPC$TL_messages_stickerSet2 = tLRPC$TL_messages_stickerSet3;
                i = i2;
            } catch (Throwable th) {
                th = th;
                tLRPC$TL_messages_stickerSet = tLRPC$TL_messages_stickerSet3;
                sQLiteCursor = queryFinalized;
                try {
                    FileLog.m99e(th);
                    i = 0;
                    tLRPC$TL_messages_stickerSet2 = tLRPC$TL_messages_stickerSet;
                    processLoadedDiceStickers(str, z, tLRPC$TL_messages_stickerSet2, true, i, booleanCallback);
                } finally {
                    if (sQLiteCursor != null) {
                        sQLiteCursor.dispose();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            tLRPC$TL_messages_stickerSet = null;
        }
        processLoadedDiceStickers(str, z, tLRPC$TL_messages_stickerSet2, true, i, booleanCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickersByEmojiOrName$76(final MessagesStorage.BooleanCallback booleanCallback, final String str, final boolean z, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda112
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadStickersByEmojiOrName$75(tLRPC$TL_error, booleanCallback, tLObject, str, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickersByEmojiOrName$75(TLRPC$TL_error tLRPC$TL_error, MessagesStorage.BooleanCallback booleanCallback, TLObject tLObject, String str, boolean z) {
        if (tLObject instanceof TLRPC$TL_messages_stickerSet) {
            processLoadedDiceStickers(str, z, (TLRPC$TL_messages_stickerSet) tLObject, false, (int) (System.currentTimeMillis() / 1000), booleanCallback);
        } else {
            processLoadedDiceStickers(str, z, null, false, (int) (System.currentTimeMillis() / 1000), booleanCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedDiceStickers$77(String str) {
        this.loadingDiceStickerSets.remove(str);
    }

    private void processLoadedDiceStickers(final String str, final boolean z, final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, final boolean z2, final int i, final MessagesStorage.BooleanCallback booleanCallback) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedDiceStickers$77(str);
            }
        });
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda140
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedDiceStickers$80(z2, tLRPC$TL_messages_stickerSet, i, str, z, booleanCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedDiceStickers$80(boolean z, final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, int i, final String str, final boolean z2, final MessagesStorage.BooleanCallback booleanCallback) {
        long j = 1000;
        if ((z && (tLRPC$TL_messages_stickerSet == null || Math.abs((System.currentTimeMillis() / 1000) - i) >= 86400)) || (!z && tLRPC$TL_messages_stickerSet == null)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedDiceStickers$78(str, z2, booleanCallback);
                }
            }, (tLRPC$TL_messages_stickerSet != null || z) ? 0L : 0L);
            if (tLRPC$TL_messages_stickerSet == null) {
                return;
            }
        }
        if (tLRPC$TL_messages_stickerSet != null) {
            if (!z) {
                putDiceStickersToCache(str, tLRPC$TL_messages_stickerSet, i);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda66
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedDiceStickers$79(str, tLRPC$TL_messages_stickerSet, booleanCallback);
                }
            });
        } else if (z) {
        } else {
            putDiceStickersToCache(str, null, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedDiceStickers$78(String str, boolean z, MessagesStorage.BooleanCallback booleanCallback) {
        loadStickersByEmojiOrName(str, z, false, booleanCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedDiceStickers$79(String str, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, MessagesStorage.BooleanCallback booleanCallback) {
        this.diceStickerSetsByEmoji.put(str, tLRPC$TL_messages_stickerSet);
        this.diceEmojiStickerSetsById.put(tLRPC$TL_messages_stickerSet.set.f1636id, str);
        if (booleanCallback != null) {
            booleanCallback.run(true);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.diceStickersDidLoad, str);
    }

    private void putDiceStickersToCache(final String str, final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, final int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda121
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putDiceStickersToCache$81(tLRPC$TL_messages_stickerSet, str, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putDiceStickersToCache$81(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, String str, int i) {
        try {
            if (tLRPC$TL_messages_stickerSet != null) {
                SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO stickers_dice VALUES(?, ?, ?)");
                executeFast.requery();
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$TL_messages_stickerSet.getObjectSize());
                tLRPC$TL_messages_stickerSet.serializeToStream(nativeByteBuffer);
                executeFast.bindString(1, str);
                executeFast.bindByteBuffer(2, nativeByteBuffer);
                executeFast.bindInteger(3, i);
                executeFast.step();
                nativeByteBuffer.reuse();
                executeFast.dispose();
            } else {
                SQLitePreparedStatement executeFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE stickers_dice SET date = ?");
                executeFast2.requery();
                executeFast2.bindInteger(1, i);
                executeFast2.step();
                executeFast2.dispose();
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public void markSetInstalling(long j, boolean z) {
        this.uninstalledForceStickerSetsById.remove(Long.valueOf(j));
        if (z && !this.installedForceStickerSetsById.contains(Long.valueOf(j))) {
            this.installedForceStickerSetsById.add(Long.valueOf(j));
        }
        if (z) {
            return;
        }
        this.installedForceStickerSetsById.remove(Long.valueOf(j));
    }

    public void markSetUninstalling(long j, boolean z) {
        this.installedForceStickerSetsById.remove(Long.valueOf(j));
        if (z && !this.uninstalledForceStickerSetsById.contains(Long.valueOf(j))) {
            this.uninstalledForceStickerSetsById.add(Long.valueOf(j));
        }
        if (z) {
            return;
        }
        this.uninstalledForceStickerSetsById.remove(Long.valueOf(j));
    }

    public void loadStickers(int i, boolean z, boolean z2) {
        loadStickers(i, z, z2, false, null);
    }

    public void loadStickers(int i, boolean z, boolean z2, boolean z3) {
        loadStickers(i, z, z2, z3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void loadStickers(final int i, boolean z, final boolean z2, boolean z3, final Utilities.Callback<ArrayList<TLRPC$TL_messages_stickerSet>> callback) {
        long j;
        TLRPC$TL_messages_getMaskStickers tLRPC$TL_messages_getMaskStickers;
        if (this.loadingStickers[i]) {
            if (z3) {
                this.scheduledLoadStickers[i] = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda37
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.this.lambda$loadStickers$82(i, z2, callback);
                    }
                };
                return;
            } else if (callback != null) {
                callback.run(null);
                return;
            } else {
                return;
            }
        }
        if (i == 3) {
            if (this.featuredStickerSets[0].isEmpty() || !getMessagesController().preloadFeaturedStickers) {
                if (callback != null) {
                    callback.run(null);
                    return;
                }
                return;
            }
        } else if (i == 6) {
            if (this.featuredStickerSets[1].isEmpty() || !getMessagesController().preloadFeaturedStickers) {
                if (callback != null) {
                    callback.run(null);
                    return;
                }
                return;
            }
        } else if (i != 4) {
            loadArchivedStickersCount(i, z);
        }
        this.loadingStickers[i] = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadStickers$84(i, callback);
                }
            });
        } else if (i == 3 || i == 6) {
            char c = i != 6 ? (char) 0 : (char) 1;
            TLRPC$TL_messages_allStickers tLRPC$TL_messages_allStickers = new TLRPC$TL_messages_allStickers();
            tLRPC$TL_messages_allStickers.hash2 = this.loadFeaturedHash[c];
            int size = this.featuredStickerSets[c].size();
            for (int i2 = 0; i2 < size; i2++) {
                tLRPC$TL_messages_allStickers.sets.add(this.featuredStickerSets[c].get(i2).set);
            }
            processLoadStickersResponse(i, tLRPC$TL_messages_allStickers, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda149
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.lambda$loadStickers$85(Utilities.Callback.this);
                }
            });
        } else if (i == 4) {
            TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
            tLRPC$TL_messages_getStickerSet.stickerset = new TLRPC$TL_inputStickerSetAnimatedEmoji();
            getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda189
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    MediaDataController.this.lambda$loadStickers$88(i, callback, tLObject, tLRPC$TL_error);
                }
            });
        } else {
            if (i == 0) {
                TLRPC$TL_messages_getAllStickers tLRPC$TL_messages_getAllStickers = new TLRPC$TL_messages_getAllStickers();
                j = z2 ? 0L : this.loadHash[i];
                tLRPC$TL_messages_getAllStickers.hash = j;
                tLRPC$TL_messages_getMaskStickers = tLRPC$TL_messages_getAllStickers;
            } else if (i == 5) {
                TLRPC$TL_messages_getEmojiStickers tLRPC$TL_messages_getEmojiStickers = new TLRPC$TL_messages_getEmojiStickers();
                j = z2 ? 0L : this.loadHash[i];
                tLRPC$TL_messages_getEmojiStickers.hash = j;
                tLRPC$TL_messages_getMaskStickers = tLRPC$TL_messages_getEmojiStickers;
            } else {
                TLRPC$TL_messages_getMaskStickers tLRPC$TL_messages_getMaskStickers2 = new TLRPC$TL_messages_getMaskStickers();
                j = z2 ? 0L : this.loadHash[i];
                tLRPC$TL_messages_getMaskStickers2.hash = j;
                tLRPC$TL_messages_getMaskStickers = tLRPC$TL_messages_getMaskStickers2;
            }
            final long j2 = j;
            getConnectionsManager().sendRequest(tLRPC$TL_messages_getMaskStickers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda190
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    MediaDataController.this.lambda$loadStickers$92(i, callback, j2, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$82(int i, boolean z, Utilities.Callback callback) {
        loadStickers(i, false, z, false, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$84(int i, final Utilities.Callback callback) {
        final ArrayList<TLRPC$TL_messages_stickerSet> arrayList = new ArrayList<>();
        int i2 = 0;
        long j = 0;
        SQLiteCursor sQLiteCursor = null;
        try {
            sQLiteCursor = getMessagesStorage().getDatabase().queryFinalized("SELECT data, date, hash FROM stickers_v2 WHERE id = " + (i + 1), new Object[0]);
            if (sQLiteCursor.next()) {
                NativeByteBuffer byteBufferValue = sQLiteCursor.byteBufferValue(0);
                if (byteBufferValue != null) {
                    int readInt32 = byteBufferValue.readInt32(false);
                    for (int i3 = 0; i3 < readInt32; i3++) {
                        arrayList.add(TLRPC$messages_StickerSet.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false));
                    }
                    byteBufferValue.reuse();
                }
                i2 = sQLiteCursor.intValue(1);
                j = calcStickersHash(arrayList);
            }
        } catch (Throwable th) {
            try {
                FileLog.m99e(th);
            } finally {
                if (sQLiteCursor != null) {
                    sQLiteCursor.dispose();
                }
            }
        }
        processLoadedStickers(i, arrayList, true, i2, j, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda153
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.lambda$loadStickers$83(Utilities.Callback.this, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadStickers$83(Utilities.Callback callback, ArrayList arrayList) {
        if (callback != null) {
            callback.run(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadStickers$85(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$88(int i, final Utilities.Callback callback, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_messages_stickerSet) {
            ArrayList<TLRPC$TL_messages_stickerSet> arrayList = new ArrayList<>();
            arrayList.add((TLRPC$TL_messages_stickerSet) tLObject);
            processLoadedStickers(i, arrayList, false, (int) (System.currentTimeMillis() / 1000), calcStickersHash(arrayList), new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda151
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.lambda$loadStickers$86(Utilities.Callback.this);
                }
            });
            return;
        }
        processLoadedStickers(i, null, false, (int) (System.currentTimeMillis() / 1000), 0L, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda150
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.lambda$loadStickers$87(Utilities.Callback.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadStickers$86(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadStickers$87(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$92(final int i, final Utilities.Callback callback, final long j, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda92
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadStickers$91(tLObject, i, callback, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStickers$91(TLObject tLObject, int i, final Utilities.Callback callback, long j) {
        if (tLObject instanceof TLRPC$TL_messages_allStickers) {
            processLoadStickersResponse(i, (TLRPC$TL_messages_allStickers) tLObject, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda152
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.lambda$loadStickers$89(Utilities.Callback.this);
                }
            });
        } else {
            processLoadedStickers(i, null, false, (int) (System.currentTimeMillis() / 1000), j, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda148
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.lambda$loadStickers$90(Utilities.Callback.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadStickers$89(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadStickers$90(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(null);
        }
    }

    private void putStickersToCache(final int i, ArrayList<TLRPC$TL_messages_stickerSet> arrayList, final int i2, final long j) {
        final ArrayList arrayList2 = arrayList != null ? new ArrayList(arrayList) : null;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putStickersToCache$93(arrayList2, i, i2, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putStickersToCache$93(ArrayList arrayList, int i, int i2, long j) {
        try {
            if (arrayList != null) {
                SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO stickers_v2 VALUES(?, ?, ?, ?)");
                executeFast.requery();
                int i3 = 4;
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    i3 += ((TLRPC$TL_messages_stickerSet) arrayList.get(i4)).getObjectSize();
                }
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(i3);
                nativeByteBuffer.writeInt32(arrayList.size());
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    ((TLRPC$TL_messages_stickerSet) arrayList.get(i5)).serializeToStream(nativeByteBuffer);
                }
                executeFast.bindInteger(1, i + 1);
                executeFast.bindByteBuffer(2, nativeByteBuffer);
                executeFast.bindInteger(3, i2);
                executeFast.bindLong(4, j);
                executeFast.step();
                nativeByteBuffer.reuse();
                executeFast.dispose();
                return;
            }
            SQLitePreparedStatement executeFast2 = getMessagesStorage().getDatabase().executeFast("UPDATE stickers_v2 SET date = ?");
            executeFast2.requery();
            executeFast2.bindLong(1, i2);
            executeFast2.step();
            executeFast2.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public String getStickerSetName(long j) {
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = this.stickerSetsById.get(j);
        if (tLRPC$TL_messages_stickerSet != null) {
            return tLRPC$TL_messages_stickerSet.set.short_name;
        }
        TLRPC$StickerSetCovered tLRPC$StickerSetCovered = this.featuredStickerSetsById[0].get(j);
        if (tLRPC$StickerSetCovered != null) {
            return tLRPC$StickerSetCovered.set.short_name;
        }
        TLRPC$StickerSetCovered tLRPC$StickerSetCovered2 = this.featuredStickerSetsById[1].get(j);
        if (tLRPC$StickerSetCovered2 != null) {
            return tLRPC$StickerSetCovered2.set.short_name;
        }
        return null;
    }

    public static long getStickerSetId(TLRPC$Document tLRPC$Document) {
        if (tLRPC$Document == null) {
            return -1L;
        }
        for (int i = 0; i < tLRPC$Document.attributes.size(); i++) {
            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i);
            if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeSticker) || (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeCustomEmoji)) {
                TLRPC$InputStickerSet tLRPC$InputStickerSet = tLRPC$DocumentAttribute.stickerset;
                if (tLRPC$InputStickerSet instanceof TLRPC$TL_inputStickerSetID) {
                    return tLRPC$InputStickerSet.f1625id;
                }
                return -1L;
            }
        }
        return -1L;
    }

    public static TLRPC$InputStickerSet getInputStickerSet(TLRPC$Document tLRPC$Document) {
        for (int i = 0; i < tLRPC$Document.attributes.size(); i++) {
            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i);
            if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeSticker) {
                TLRPC$InputStickerSet tLRPC$InputStickerSet = tLRPC$DocumentAttribute.stickerset;
                if (tLRPC$InputStickerSet instanceof TLRPC$TL_inputStickerSetEmpty) {
                    return null;
                }
                return tLRPC$InputStickerSet;
            }
        }
        return null;
    }

    private static long calcStickersHash(ArrayList<TLRPC$TL_messages_stickerSet> arrayList) {
        long j = 0;
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) != null) {
                TLRPC$StickerSet tLRPC$StickerSet = arrayList.get(i).set;
                if (!tLRPC$StickerSet.archived) {
                    j = calcHash(j, tLRPC$StickerSet.hash);
                }
            }
        }
        return j;
    }

    private void processLoadedStickers(int i, ArrayList<TLRPC$TL_messages_stickerSet> arrayList, boolean z, int i2, long j) {
        processLoadedStickers(i, arrayList, z, i2, j, null);
    }

    private void processLoadedStickers(final int i, final ArrayList<TLRPC$TL_messages_stickerSet> arrayList, final boolean z, final int i2, final long j, final Runnable runnable) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedStickers$94(i);
            }
        });
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda136
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedStickers$98(z, arrayList, i2, j, i, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedStickers$94(int i) {
        this.loadingStickers[i] = false;
        this.stickersLoaded[i] = true;
        Runnable[] runnableArr = this.scheduledLoadStickers;
        if (runnableArr[i] != null) {
            runnableArr[i].run();
            this.scheduledLoadStickers[i] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedStickers$98(boolean z, final ArrayList arrayList, final int i, final long j, final int i2, final Runnable runnable) {
        int i3;
        String str;
        int i4;
        MediaDataController mediaDataController = this;
        ArrayList arrayList2 = arrayList;
        long j2 = 1000;
        if ((z && (arrayList2 == null || BuildVars.DEBUG_PRIVATE_VERSION || Math.abs((System.currentTimeMillis() / 1000) - i) >= 3600)) || (!z && arrayList2 == null && j == 0)) {
            Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda73
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedStickers$95(arrayList, j, i2);
                }
            };
            if (arrayList2 != null || z) {
                j2 = 0;
            }
            AndroidUtilities.runOnUIThread(runnable2, j2);
            if (arrayList2 == null) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
        }
        if (arrayList2 == null) {
            if (z) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedStickers$97(i2, i);
                }
            });
            putStickersToCache(i2, null, i, 0L);
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        try {
            final ArrayList<TLRPC$TL_messages_stickerSet> arrayList3 = new ArrayList<>();
            final LongSparseArray longSparseArray = new LongSparseArray();
            final HashMap hashMap = new HashMap();
            final LongSparseArray longSparseArray2 = new LongSparseArray();
            final LongSparseArray longSparseArray3 = new LongSparseArray();
            HashMap hashMap2 = new HashMap();
            int i5 = 0;
            while (i5 < arrayList.size()) {
                TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) arrayList2.get(i5);
                if (tLRPC$TL_messages_stickerSet != null && mediaDataController.removingStickerSetsUndos.indexOfKey(tLRPC$TL_messages_stickerSet.set.f1636id) < 0) {
                    arrayList3.add(tLRPC$TL_messages_stickerSet);
                    longSparseArray.put(tLRPC$TL_messages_stickerSet.set.f1636id, tLRPC$TL_messages_stickerSet);
                    hashMap.put(tLRPC$TL_messages_stickerSet.set.short_name, tLRPC$TL_messages_stickerSet);
                    int i6 = 0;
                    while (i6 < tLRPC$TL_messages_stickerSet.documents.size()) {
                        TLRPC$Document tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(i6);
                        if (tLRPC$Document != null && !(tLRPC$Document instanceof TLRPC$TL_documentEmpty)) {
                            i4 = i5;
                            longSparseArray3.put(tLRPC$Document.f1610id, tLRPC$Document);
                            i6++;
                            i5 = i4;
                        }
                        i4 = i5;
                        i6++;
                        i5 = i4;
                    }
                    i3 = i5;
                    if (!tLRPC$TL_messages_stickerSet.set.archived) {
                        int i7 = 0;
                        while (i7 < tLRPC$TL_messages_stickerSet.packs.size()) {
                            TLRPC$TL_stickerPack tLRPC$TL_stickerPack = tLRPC$TL_messages_stickerSet.packs.get(i7);
                            if (tLRPC$TL_stickerPack != null && (str = tLRPC$TL_stickerPack.emoticon) != null) {
                                String replace = str.replace("️", "");
                                tLRPC$TL_stickerPack.emoticon = replace;
                                ArrayList arrayList4 = (ArrayList) hashMap2.get(replace);
                                if (arrayList4 == null) {
                                    arrayList4 = new ArrayList();
                                    hashMap2.put(tLRPC$TL_stickerPack.emoticon, arrayList4);
                                }
                                int i8 = 0;
                                while (i8 < tLRPC$TL_stickerPack.documents.size()) {
                                    Long l = tLRPC$TL_stickerPack.documents.get(i8);
                                    HashMap hashMap3 = hashMap2;
                                    if (longSparseArray2.indexOfKey(l.longValue()) < 0) {
                                        longSparseArray2.put(l.longValue(), tLRPC$TL_stickerPack.emoticon);
                                    }
                                    TLRPC$Document tLRPC$Document2 = (TLRPC$Document) longSparseArray3.get(l.longValue());
                                    if (tLRPC$Document2 != null) {
                                        arrayList4.add(tLRPC$Document2);
                                    }
                                    i8++;
                                    hashMap2 = hashMap3;
                                }
                            }
                            i7++;
                            hashMap2 = hashMap2;
                        }
                    }
                    i5 = i3 + 1;
                    mediaDataController = this;
                    arrayList2 = arrayList;
                    hashMap2 = hashMap2;
                }
                i3 = i5;
                i5 = i3 + 1;
                mediaDataController = this;
                arrayList2 = arrayList;
                hashMap2 = hashMap2;
            }
            final HashMap hashMap4 = hashMap2;
            if (!z) {
                putStickersToCache(i2, arrayList3, i, j);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedStickers$96(i2, longSparseArray, hashMap, arrayList3, j, i, longSparseArray3, hashMap4, longSparseArray2, runnable);
                }
            });
        } catch (Throwable th) {
            FileLog.m99e(th);
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedStickers$95(ArrayList arrayList, long j, int i) {
        if (arrayList != null && j != 0) {
            this.loadHash[i] = j;
        }
        loadStickers(i, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processLoadedStickers$96(int i, LongSparseArray longSparseArray, HashMap hashMap, ArrayList arrayList, long j, int i2, LongSparseArray longSparseArray2, HashMap hashMap2, LongSparseArray longSparseArray3, Runnable runnable) {
        for (int i3 = 0; i3 < this.stickerSets[i].size(); i3++) {
            TLRPC$StickerSet tLRPC$StickerSet = this.stickerSets[i].get(i3).set;
            this.stickerSetsById.remove(tLRPC$StickerSet.f1636id);
            this.stickerSetsByName.remove(tLRPC$StickerSet.short_name);
            if (i != 3 && i != 6 && i != 4) {
                this.installedStickerSetsById.remove(tLRPC$StickerSet.f1636id);
            }
        }
        for (int i4 = 0; i4 < longSparseArray.size(); i4++) {
            this.stickerSetsById.put(longSparseArray.keyAt(i4), (TLRPC$TL_messages_stickerSet) longSparseArray.valueAt(i4));
            if (i != 3 && i != 6 && i != 4) {
                this.installedStickerSetsById.put(longSparseArray.keyAt(i4), (TLRPC$TL_messages_stickerSet) longSparseArray.valueAt(i4));
            }
        }
        this.stickerSetsByName.putAll(hashMap);
        this.stickerSets[i] = arrayList;
        this.loadHash[i] = j;
        this.loadDate[i] = i2;
        this.stickersByIds[i] = longSparseArray2;
        if (i == 0) {
            this.allStickers = hashMap2;
            this.stickersByEmoji = longSparseArray3;
        } else if (i == 3) {
            this.allStickersFeatured = hashMap2;
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedStickers$97(int i, int i2) {
        this.loadDate[i] = i2;
    }

    public boolean cancelRemovingStickerSet(long j) {
        Runnable runnable = this.removingStickerSetsUndos.get(j);
        if (runnable != null) {
            runnable.run();
            return true;
        }
        return false;
    }

    public void preloadStickerSetThumb(TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        TLRPC$StickerSet tLRPC$StickerSet;
        TLRPC$PhotoSize closestPhotoSizeWithSize;
        ArrayList<TLRPC$Document> arrayList;
        if (tLRPC$TL_messages_stickerSet == null || (tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set) == null || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$StickerSet.thumbs, 90)) == null || (arrayList = tLRPC$TL_messages_stickerSet.documents) == null || arrayList.isEmpty()) {
            return;
        }
        loadStickerSetThumbInternal(closestPhotoSizeWithSize, tLRPC$TL_messages_stickerSet, arrayList.get(0), tLRPC$TL_messages_stickerSet.set.thumb_version);
    }

    public void preloadStickerSetThumb(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
        TLRPC$StickerSet tLRPC$StickerSet;
        TLRPC$PhotoSize closestPhotoSizeWithSize;
        if (tLRPC$StickerSetCovered == null || (tLRPC$StickerSet = tLRPC$StickerSetCovered.set) == null || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$StickerSet.thumbs, 90)) == null) {
            return;
        }
        TLRPC$Document tLRPC$Document = tLRPC$StickerSetCovered.cover;
        if (tLRPC$Document == null) {
            if (tLRPC$StickerSetCovered.covers.isEmpty()) {
                return;
            }
            tLRPC$Document = tLRPC$StickerSetCovered.covers.get(0);
        }
        loadStickerSetThumbInternal(closestPhotoSizeWithSize, tLRPC$StickerSetCovered, tLRPC$Document, tLRPC$StickerSetCovered.set.thumb_version);
    }

    private void loadStickerSetThumbInternal(TLRPC$PhotoSize tLRPC$PhotoSize, Object obj, TLRPC$Document tLRPC$Document, int i) {
        ImageLocation forSticker = ImageLocation.getForSticker(tLRPC$PhotoSize, tLRPC$Document, i);
        if (forSticker != null) {
            getFileLoader().loadFile(forSticker, obj, forSticker.imageType == 1 ? "tgs" : "webp", 3, 1);
        }
    }

    public void toggleStickerSet(Context context, TLObject tLObject, int i, BaseFragment baseFragment, boolean z, boolean z2) {
        toggleStickerSet(context, tLObject, i, baseFragment, z, z2, null, true);
    }

    public void toggleStickerSet(final Context context, final TLObject tLObject, final int i, final BaseFragment baseFragment, final boolean z, boolean z2, final Runnable runnable, boolean z3) {
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet;
        TLRPC$StickerSet tLRPC$StickerSet;
        final TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2;
        int i2;
        int i3;
        if (tLObject instanceof TLRPC$TL_messages_stickerSet) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet3 = (TLRPC$TL_messages_stickerSet) tLObject;
            tLRPC$TL_messages_stickerSet2 = tLRPC$TL_messages_stickerSet3;
            tLRPC$StickerSet = tLRPC$TL_messages_stickerSet3.set;
        } else if (tLObject instanceof TLRPC$StickerSetCovered) {
            TLRPC$StickerSet tLRPC$StickerSet2 = ((TLRPC$StickerSetCovered) tLObject).set;
            if (i != 2) {
                tLRPC$TL_messages_stickerSet = this.stickerSetsById.get(tLRPC$StickerSet2.f1636id);
                if (tLRPC$TL_messages_stickerSet == null) {
                    return;
                }
            } else {
                tLRPC$TL_messages_stickerSet = null;
            }
            tLRPC$StickerSet = tLRPC$StickerSet2;
            tLRPC$TL_messages_stickerSet2 = tLRPC$TL_messages_stickerSet;
        } else {
            throw new IllegalArgumentException("Invalid type of the given stickerSetObject: " + tLObject.getClass());
        }
        if (tLRPC$StickerSet.masks) {
            i2 = 1;
        } else {
            i2 = tLRPC$StickerSet.emojis ? 5 : 0;
        }
        tLRPC$StickerSet.archived = i == 1;
        int i4 = 0;
        while (true) {
            if (i4 >= this.stickerSets[i2].size()) {
                i3 = 0;
                break;
            }
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet4 = this.stickerSets[i2].get(i4);
            if (tLRPC$TL_messages_stickerSet4.set.f1636id == tLRPC$StickerSet.f1636id) {
                this.stickerSets[i2].remove(i4);
                if (i == 2) {
                    this.stickerSets[i2].add(0, tLRPC$TL_messages_stickerSet4);
                } else if (z3) {
                    this.stickerSetsById.remove(tLRPC$TL_messages_stickerSet4.set.f1636id);
                    this.installedStickerSetsById.remove(tLRPC$TL_messages_stickerSet4.set.f1636id);
                    this.stickerSetsByName.remove(tLRPC$TL_messages_stickerSet4.set.short_name);
                }
                i3 = i4;
            } else {
                i4++;
            }
        }
        this.loadHash[i2] = calcStickersHash(this.stickerSets[i2]);
        putStickersToCache(i2, this.stickerSets[i2], this.loadDate[i2], this.loadHash[i2]);
        if (i == 2) {
            if (!cancelRemovingStickerSet(tLRPC$StickerSet.f1636id)) {
                toggleStickerSetInternal(context, i, baseFragment, z, tLObject, tLRPC$StickerSet, i2, z2);
            }
        } else if (!z2 || baseFragment == null) {
            toggleStickerSetInternal(context, i, baseFragment, z, tLObject, tLRPC$StickerSet, i2, false);
        } else {
            StickerSetBulletinLayout stickerSetBulletinLayout = new StickerSetBulletinLayout(context, tLObject, i, null, baseFragment.getResourceProvider());
            final boolean[] zArr = new boolean[1];
            markSetUninstalling(tLRPC$StickerSet.f1636id, true);
            final TLRPC$StickerSet tLRPC$StickerSet3 = tLRPC$StickerSet;
            final int i5 = i2;
            final int i6 = i3;
            final TLRPC$StickerSet tLRPC$StickerSet4 = tLRPC$StickerSet;
            final int i7 = i2;
            Bulletin.UndoButton delayedAction = new Bulletin.UndoButton(context, false).setUndoAction(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda146
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$toggleStickerSet$99(zArr, tLRPC$StickerSet3, i5, i6, tLRPC$TL_messages_stickerSet2, runnable);
                }
            }).setDelayedAction(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda143
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$toggleStickerSet$100(zArr, context, i, baseFragment, z, tLObject, tLRPC$StickerSet4, i7);
                }
            });
            stickerSetBulletinLayout.setButton(delayedAction);
            LongSparseArray<Runnable> longSparseArray = this.removingStickerSetsUndos;
            long j = tLRPC$StickerSet.f1636id;
            Objects.requireNonNull(delayedAction);
            longSparseArray.put(j, new MediaDataController$$ExternalSyntheticLambda155(delayedAction));
            Bulletin.make(baseFragment, stickerSetBulletinLayout, 2750).show();
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i2), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSet$99(boolean[] zArr, TLRPC$StickerSet tLRPC$StickerSet, int i, int i2, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet, Runnable runnable) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        markSetUninstalling(tLRPC$StickerSet.f1636id, false);
        tLRPC$StickerSet.archived = false;
        this.stickerSets[i].add(i2, tLRPC$TL_messages_stickerSet);
        this.stickerSetsById.put(tLRPC$StickerSet.f1636id, tLRPC$TL_messages_stickerSet);
        this.installedStickerSetsById.put(tLRPC$StickerSet.f1636id, tLRPC$TL_messages_stickerSet);
        this.stickerSetsByName.put(tLRPC$StickerSet.short_name, tLRPC$TL_messages_stickerSet);
        this.removingStickerSetsUndos.remove(tLRPC$StickerSet.f1636id);
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
        putStickersToCache(i, this.stickerSets[i], this.loadDate[i], this.loadHash[i]);
        if (runnable != null) {
            runnable.run();
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSet$100(boolean[] zArr, Context context, int i, BaseFragment baseFragment, boolean z, TLObject tLObject, TLRPC$StickerSet tLRPC$StickerSet, int i2) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        toggleStickerSetInternal(context, i, baseFragment, z, tLObject, tLRPC$StickerSet, i2, false);
    }

    public void removeMultipleStickerSets(final Context context, final BaseFragment baseFragment, final ArrayList<TLRPC$TL_messages_stickerSet> arrayList) {
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet;
        int i;
        if (arrayList == null || arrayList.isEmpty() || (tLRPC$TL_messages_stickerSet = arrayList.get(arrayList.size() - 1)) == null) {
            return;
        }
        TLRPC$StickerSet tLRPC$StickerSet = tLRPC$TL_messages_stickerSet.set;
        if (tLRPC$StickerSet.masks) {
            i = 1;
        } else {
            i = tLRPC$StickerSet.emojis ? 5 : 0;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).set.archived = false;
        }
        final int[] iArr = new int[arrayList.size()];
        for (int i3 = 0; i3 < this.stickerSets[i].size(); i3++) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet2 = this.stickerSets[i].get(i3);
            int i4 = 0;
            while (true) {
                if (i4 >= arrayList.size()) {
                    break;
                } else if (tLRPC$TL_messages_stickerSet2.set.f1636id == arrayList.get(i4).set.f1636id) {
                    iArr[i4] = i3;
                    this.stickerSets[i].remove(i3);
                    this.stickerSetsById.remove(tLRPC$TL_messages_stickerSet2.set.f1636id);
                    this.installedStickerSetsById.remove(tLRPC$TL_messages_stickerSet2.set.f1636id);
                    this.stickerSetsByName.remove(tLRPC$TL_messages_stickerSet2.set.short_name);
                    break;
                } else {
                    i4++;
                }
            }
        }
        ArrayList<TLRPC$TL_messages_stickerSet>[] arrayListArr = this.stickerSets;
        ArrayList<TLRPC$TL_messages_stickerSet> arrayList2 = arrayListArr[i];
        int i5 = this.loadDate[i];
        long[] jArr = this.loadHash;
        long calcStickersHash = calcStickersHash(arrayListArr[i]);
        jArr[i] = calcStickersHash;
        putStickersToCache(i, arrayList2, i5, calcStickersHash);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            markSetUninstalling(arrayList.get(i6).set.f1636id, true);
        }
        StickerSetBulletinLayout stickerSetBulletinLayout = new StickerSetBulletinLayout(context, tLRPC$TL_messages_stickerSet, arrayList.size(), 0, null, baseFragment.getResourceProvider());
        final boolean[] zArr = new boolean[1];
        final int i7 = i;
        final int i8 = i;
        Bulletin.UndoButton delayedAction = new Bulletin.UndoButton(context, false).setUndoAction(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda144
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$removeMultipleStickerSets$101(zArr, arrayList, i7, iArr);
            }
        }).setDelayedAction(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda145
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$removeMultipleStickerSets$102(zArr, arrayList, context, baseFragment, i8);
            }
        });
        stickerSetBulletinLayout.setButton(delayedAction);
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            LongSparseArray<Runnable> longSparseArray = this.removingStickerSetsUndos;
            long j = arrayList.get(i9).set.f1636id;
            Objects.requireNonNull(delayedAction);
            longSparseArray.put(j, new MediaDataController$$ExternalSyntheticLambda155(delayedAction));
        }
        Bulletin.make(baseFragment, stickerSetBulletinLayout, 2750).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeMultipleStickerSets$101(boolean[] zArr, ArrayList arrayList, int i, int[] iArr) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            markSetUninstalling(((TLRPC$TL_messages_stickerSet) arrayList.get(i2)).set.f1636id, false);
            ((TLRPC$TL_messages_stickerSet) arrayList.get(i2)).set.archived = false;
            this.stickerSets[i].add(iArr[i2], (TLRPC$TL_messages_stickerSet) arrayList.get(i2));
            this.stickerSetsById.put(((TLRPC$TL_messages_stickerSet) arrayList.get(i2)).set.f1636id, (TLRPC$TL_messages_stickerSet) arrayList.get(i2));
            this.installedStickerSetsById.put(((TLRPC$TL_messages_stickerSet) arrayList.get(i2)).set.f1636id, (TLRPC$TL_messages_stickerSet) arrayList.get(i2));
            this.stickerSetsByName.put(((TLRPC$TL_messages_stickerSet) arrayList.get(i2)).set.short_name, (TLRPC$TL_messages_stickerSet) arrayList.get(i2));
            this.removingStickerSetsUndos.remove(((TLRPC$TL_messages_stickerSet) arrayList.get(i2)).set.f1636id);
        }
        ArrayList<TLRPC$TL_messages_stickerSet>[] arrayListArr = this.stickerSets;
        ArrayList<TLRPC$TL_messages_stickerSet> arrayList2 = arrayListArr[i];
        int i3 = this.loadDate[i];
        long[] jArr = this.loadHash;
        long calcStickersHash = calcStickersHash(arrayListArr[i]);
        jArr[i] = calcStickersHash;
        putStickersToCache(i, arrayList2, i3, calcStickersHash);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeMultipleStickerSets$102(boolean[] zArr, ArrayList arrayList, Context context, BaseFragment baseFragment, int i) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            toggleStickerSetInternal(context, 0, baseFragment, true, (TLObject) arrayList.get(i2), ((TLRPC$TL_messages_stickerSet) arrayList.get(i2)).set, i, false);
        }
    }

    private void toggleStickerSetInternal(final Context context, int i, final BaseFragment baseFragment, final boolean z, final TLObject tLObject, final TLRPC$StickerSet tLRPC$StickerSet, final int i2, final boolean z2) {
        TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
        tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet.access_hash;
        long j = tLRPC$StickerSet.f1636id;
        tLRPC$TL_inputStickerSetID.f1625id = j;
        if (i != 0) {
            TLRPC$TL_messages_installStickerSet tLRPC$TL_messages_installStickerSet = new TLRPC$TL_messages_installStickerSet();
            tLRPC$TL_messages_installStickerSet.stickerset = tLRPC$TL_inputStickerSetID;
            tLRPC$TL_messages_installStickerSet.archived = i == 1;
            markSetInstalling(tLRPC$StickerSet.f1636id, true);
            getConnectionsManager().sendRequest(tLRPC$TL_messages_installStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda215
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
                    MediaDataController.this.lambda$toggleStickerSetInternal$105(tLRPC$StickerSet, baseFragment, z, i2, z2, context, tLObject, tLObject2, tLRPC$TL_error);
                }
            });
            return;
        }
        markSetUninstalling(j, true);
        TLRPC$TL_messages_uninstallStickerSet tLRPC$TL_messages_uninstallStickerSet = new TLRPC$TL_messages_uninstallStickerSet();
        tLRPC$TL_messages_uninstallStickerSet.stickerset = tLRPC$TL_inputStickerSetID;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_uninstallStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda214
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$toggleStickerSetInternal$108(tLRPC$StickerSet, i2, tLObject2, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$105(final TLRPC$StickerSet tLRPC$StickerSet, final BaseFragment baseFragment, final boolean z, final int i, final boolean z2, final Context context, final TLObject tLObject, final TLObject tLObject2, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda108
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$toggleStickerSetInternal$104(tLRPC$StickerSet, tLObject2, baseFragment, z, i, tLRPC$TL_error, z2, context, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$104(final TLRPC$StickerSet tLRPC$StickerSet, TLObject tLObject, BaseFragment baseFragment, boolean z, int i, TLRPC$TL_error tLRPC$TL_error, boolean z2, Context context, TLObject tLObject2) {
        this.removingStickerSetsUndos.remove(tLRPC$StickerSet.f1636id);
        if (tLObject instanceof TLRPC$TL_messages_stickerSetInstallResultArchive) {
            processStickerSetInstallResultArchive(baseFragment, z, i, (TLRPC$TL_messages_stickerSetInstallResultArchive) tLObject);
        }
        loadStickers(i, false, false, true, new Utilities.Callback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda172
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MediaDataController.this.lambda$toggleStickerSetInternal$103(tLRPC$StickerSet, (ArrayList) obj);
            }
        });
        if (tLRPC$TL_error == null && z2 && baseFragment != null) {
            Bulletin.make(baseFragment, new StickerSetBulletinLayout(context, tLObject2, 2, null, baseFragment.getResourceProvider()), (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$103(TLRPC$StickerSet tLRPC$StickerSet, ArrayList arrayList) {
        markSetInstalling(tLRPC$StickerSet.f1636id, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$108(final TLRPC$StickerSet tLRPC$StickerSet, final int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda107
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$toggleStickerSetInternal$107(tLRPC$StickerSet, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$107(final TLRPC$StickerSet tLRPC$StickerSet, int i) {
        this.removingStickerSetsUndos.remove(tLRPC$StickerSet.f1636id);
        loadStickers(i, false, true, false, new Utilities.Callback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda171
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MediaDataController.this.lambda$toggleStickerSetInternal$106(tLRPC$StickerSet, (ArrayList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSetInternal$106(TLRPC$StickerSet tLRPC$StickerSet, ArrayList arrayList) {
        markSetUninstalling(tLRPC$StickerSet.f1636id, false);
    }

    public void toggleStickerSets(ArrayList<TLRPC$StickerSet> arrayList, final int i, final int i2, final BaseFragment baseFragment, final boolean z) {
        int size = arrayList.size();
        ArrayList<TLRPC$InputStickerSet> arrayList2 = new ArrayList<>(size);
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            TLRPC$StickerSet tLRPC$StickerSet = arrayList.get(i3);
            TLRPC$TL_inputStickerSetID tLRPC$TL_inputStickerSetID = new TLRPC$TL_inputStickerSetID();
            tLRPC$TL_inputStickerSetID.access_hash = tLRPC$StickerSet.access_hash;
            tLRPC$TL_inputStickerSetID.f1625id = tLRPC$StickerSet.f1636id;
            arrayList2.add(tLRPC$TL_inputStickerSetID);
            if (i2 != 0) {
                tLRPC$StickerSet.archived = i2 == 1;
            }
            int size2 = this.stickerSets[i].size();
            int i4 = 0;
            while (true) {
                if (i4 < size2) {
                    TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = this.stickerSets[i].get(i4);
                    if (tLRPC$TL_messages_stickerSet.set.f1636id == tLRPC$TL_inputStickerSetID.f1625id) {
                        this.stickerSets[i].remove(i4);
                        if (i2 == 2) {
                            this.stickerSets[i].add(0, tLRPC$TL_messages_stickerSet);
                        } else {
                            this.stickerSetsById.remove(tLRPC$TL_messages_stickerSet.set.f1636id);
                            this.installedStickerSetsById.remove(tLRPC$TL_messages_stickerSet.set.f1636id);
                            this.stickerSetsByName.remove(tLRPC$TL_messages_stickerSet.set.short_name);
                        }
                    } else {
                        i4++;
                    }
                }
            }
            i3++;
        }
        this.loadHash[i] = calcStickersHash(this.stickerSets[i]);
        putStickersToCache(i, this.stickerSets[i], this.loadDate[i], this.loadHash[i]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.TRUE);
        TLRPC$TL_messages_toggleStickerSets tLRPC$TL_messages_toggleStickerSets = new TLRPC$TL_messages_toggleStickerSets();
        tLRPC$TL_messages_toggleStickerSets.stickersets = arrayList2;
        if (i2 == 0) {
            tLRPC$TL_messages_toggleStickerSets.uninstall = true;
        } else if (i2 == 1) {
            tLRPC$TL_messages_toggleStickerSets.archive = true;
        } else if (i2 == 2) {
            tLRPC$TL_messages_toggleStickerSets.unarchive = true;
        }
        getConnectionsManager().sendRequest(tLRPC$TL_messages_toggleStickerSets, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda192
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$toggleStickerSets$110(i2, baseFragment, z, i, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSets$110(final int i, final BaseFragment baseFragment, final boolean z, final int i2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$toggleStickerSets$109(i, tLObject, baseFragment, z, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleStickerSets$109(int i, TLObject tLObject, BaseFragment baseFragment, boolean z, int i2) {
        if (i != 0) {
            if (tLObject instanceof TLRPC$TL_messages_stickerSetInstallResultArchive) {
                processStickerSetInstallResultArchive(baseFragment, z, i2, (TLRPC$TL_messages_stickerSetInstallResultArchive) tLObject);
            }
            loadStickers(i2, false, false, true);
            return;
        }
        loadStickers(i2, false, true);
    }

    public void processStickerSetInstallResultArchive(BaseFragment baseFragment, boolean z, int i, TLRPC$TL_messages_stickerSetInstallResultArchive tLRPC$TL_messages_stickerSetInstallResultArchive) {
        int size = tLRPC$TL_messages_stickerSetInstallResultArchive.sets.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.installedStickerSetsById.remove(tLRPC$TL_messages_stickerSetInstallResultArchive.sets.get(i2).set.f1636id);
        }
        loadArchivedStickersCount(i, false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needAddArchivedStickers, tLRPC$TL_messages_stickerSetInstallResultArchive.sets);
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        baseFragment.showDialog(new StickersArchiveAlert(baseFragment.getParentActivity(), z ? baseFragment : null, tLRPC$TL_messages_stickerSetInstallResultArchive.sets).create());
    }

    private int getMask() {
        int i = 1;
        if (this.lastReturnedNum >= this.searchResultMessages.size() - 1) {
            boolean[] zArr = this.messagesSearchEndReached;
            if (zArr[0] && zArr[1]) {
                i = 0;
            }
        }
        return this.lastReturnedNum > 0 ? i | 2 : i;
    }

    public ArrayList<MessageObject> getFoundMessageObjects() {
        return this.searchResultMessages;
    }

    public void clearFoundMessageObjects() {
        this.searchResultMessages.clear();
    }

    public boolean isMessageFound(int i, boolean z) {
        return this.searchResultMessagesMap[z ? 1 : 0].indexOfKey(i) >= 0;
    }

    public void searchMessagesInChat(String str, long j, long j2, int i, int i2, int i3, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, boolean z) {
        searchMessagesInChat(str, j, j2, i, i2, i3, false, tLRPC$User, tLRPC$Chat, true, z);
    }

    public void jumpToSearchedMessage(int i, int i2) {
        if (i2 < 0 || i2 >= this.searchResultMessages.size()) {
            return;
        }
        this.lastReturnedNum = i2;
        MessageObject messageObject = this.searchResultMessages.get(i2);
        NotificationCenter notificationCenter = getNotificationCenter();
        int i3 = NotificationCenter.chatSearchResultsAvailable;
        int[] iArr = this.messagesSearchCount;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i3, Integer.valueOf(i), Integer.valueOf(messageObject.getId()), Integer.valueOf(getMask()), Long.valueOf(messageObject.getDialogId()), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(iArr[0] + iArr[1]), Boolean.TRUE, Boolean.FALSE);
    }

    public void loadMoreSearchMessages() {
        if (this.loadingMoreSearchMessages) {
            return;
        }
        boolean[] zArr = this.messagesSearchEndReached;
        if (zArr[0] && this.lastMergeDialogId == 0 && zArr[1]) {
            return;
        }
        int size = this.searchResultMessages.size();
        this.lastReturnedNum = this.searchResultMessages.size();
        searchMessagesInChat(null, this.lastDialogId, this.lastMergeDialogId, this.lastGuid, 1, this.lastReplyMessageId, false, this.lastSearchUser, this.lastSearchChat, false);
        this.lastReturnedNum = size;
        this.loadingMoreSearchMessages = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x026a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x026b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void searchMessagesInChat(java.lang.String r25, final long r26, final long r28, final int r30, final int r31, final int r32, boolean r33, final org.telegram.tgnet.TLRPC$User r34, final org.telegram.tgnet.TLRPC$Chat r35, final boolean r36, final boolean r37) {
        /*
            Method dump skipped, instructions count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.searchMessagesInChat(java.lang.String, long, long, int, int, int, boolean, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$112(final long j, final TLRPC$TL_messages_search tLRPC$TL_messages_search, final long j2, final int i, final int i2, final int i3, final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final boolean z, final boolean z2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$searchMessagesInChat$111(j, tLObject, tLRPC$TL_messages_search, j2, i, i2, i3, tLRPC$User, tLRPC$Chat, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$111(long j, TLObject tLObject, TLRPC$TL_messages_search tLRPC$TL_messages_search, long j2, int i, int i2, int i3, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, boolean z, boolean z2) {
        if (this.lastMergeDialogId == j) {
            this.mergeReqId = 0;
            if (tLObject != null) {
                TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
                this.messagesSearchEndReached[1] = tLRPC$messages_Messages.messages.isEmpty();
                this.messagesSearchCount[1] = tLRPC$messages_Messages instanceof TLRPC$TL_messages_messagesSlice ? tLRPC$messages_Messages.count : tLRPC$messages_Messages.messages.size();
                searchMessagesInChat(tLRPC$TL_messages_search.f1711q, j2, j, i, i2, i3, true, tLRPC$User, tLRPC$Chat, z, z2);
                return;
            }
            this.messagesSearchEndReached[1] = true;
            this.messagesSearchCount[1] = 0;
            searchMessagesInChat(tLRPC$TL_messages_search.f1711q, j2, j, i, i2, i3, true, tLRPC$User, tLRPC$Chat, z, z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$114(String str, final int i, final boolean z, final TLRPC$TL_messages_search tLRPC$TL_messages_search, final long j, final long j2, final int i2, final boolean z2, final long j3, final int i3, final TLRPC$User tLRPC$User, final TLRPC$Chat tLRPC$Chat, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        final ArrayList arrayList = new ArrayList();
        if (tLRPC$TL_error == null) {
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            int min = Math.min(tLRPC$messages_Messages.messages.size(), 20);
            for (int i4 = 0; i4 < min; i4++) {
                MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$messages_Messages.messages.get(i4), false, false);
                messageObject.setQuery(str);
                arrayList.add(messageObject);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$searchMessagesInChat$113(i, z, tLObject, tLRPC$TL_messages_search, j, j2, i2, arrayList, z2, j3, i3, tLRPC$User, tLRPC$Chat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInChat$113(int i, boolean z, TLObject tLObject, TLRPC$TL_messages_search tLRPC$TL_messages_search, long j, long j2, int i2, ArrayList arrayList, boolean z2, long j3, int i3, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat) {
        if (i == this.lastReqId) {
            this.reqId = 0;
            if (!z) {
                this.loadingMoreSearchMessages = false;
            }
            if (tLObject != null) {
                TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
                int i4 = 0;
                while (i4 < tLRPC$messages_Messages.messages.size()) {
                    TLRPC$Message tLRPC$Message = tLRPC$messages_Messages.messages.get(i4);
                    if ((tLRPC$Message instanceof TLRPC$TL_messageEmpty) || (tLRPC$Message.action instanceof TLRPC$TL_messageActionHistoryClear)) {
                        tLRPC$messages_Messages.messages.remove(i4);
                        i4--;
                    }
                    i4++;
                }
                getMessagesStorage().putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
                getMessagesController().putUsers(tLRPC$messages_Messages.users, false);
                getMessagesController().putChats(tLRPC$messages_Messages.chats, false);
                if (tLRPC$TL_messages_search.offset_id == 0 && j == j2) {
                    this.lastReturnedNum = 0;
                    this.searchResultMessages.clear();
                    this.searchResultMessagesMap[0].clear();
                    this.searchResultMessagesMap[1].clear();
                    this.messagesSearchCount[0] = 0;
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsLoading, Integer.valueOf(i2));
                }
                int min = Math.min(tLRPC$messages_Messages.messages.size(), 20);
                int i5 = 0;
                boolean z3 = false;
                while (i5 < min) {
                    tLRPC$messages_Messages.messages.get(i5);
                    MessageObject messageObject = (MessageObject) arrayList.get(i5);
                    this.searchResultMessages.add(messageObject);
                    this.searchResultMessagesMap[j == j2 ? (char) 0 : (char) 1].put(messageObject.getId(), messageObject);
                    i5++;
                    z3 = true;
                }
                int i6 = (j > j2 ? 1 : (j == j2 ? 0 : -1));
                this.messagesSearchEndReached[i6 == 0 ? (char) 0 : (char) 1] = tLRPC$messages_Messages.messages.size() < 21;
                this.messagesSearchCount[i6 == 0 ? (char) 0 : (char) 1] = ((tLRPC$messages_Messages instanceof TLRPC$TL_messages_messagesSlice) || (tLRPC$messages_Messages instanceof TLRPC$TL_messages_channelMessages)) ? tLRPC$messages_Messages.count : tLRPC$messages_Messages.messages.size();
                if (this.searchResultMessages.isEmpty()) {
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.chatSearchResultsAvailable, Integer.valueOf(i2), 0, Integer.valueOf(getMask()), 0L, 0, 0, Boolean.valueOf(z), Boolean.valueOf(z2));
                } else if (z3) {
                    if (this.lastReturnedNum >= this.searchResultMessages.size()) {
                        this.lastReturnedNum = this.searchResultMessages.size() - 1;
                    }
                    MessageObject messageObject2 = this.searchResultMessages.get(this.lastReturnedNum);
                    NotificationCenter notificationCenter = getNotificationCenter();
                    int i7 = NotificationCenter.chatSearchResultsAvailable;
                    int[] iArr = this.messagesSearchCount;
                    notificationCenter.lambda$postNotificationNameOnUIThread$1(i7, Integer.valueOf(i2), Integer.valueOf(messageObject2.getId()), Integer.valueOf(getMask()), Long.valueOf(messageObject2.getDialogId()), Integer.valueOf(this.lastReturnedNum), Integer.valueOf(iArr[0] + iArr[1]), Boolean.valueOf(z), Boolean.valueOf(z2));
                }
                if (i6 == 0) {
                    boolean[] zArr = this.messagesSearchEndReached;
                    if (!zArr[0] || j3 == 0 || zArr[1]) {
                        return;
                    }
                    searchMessagesInChat(this.lastSearchQuery, j2, j3, i2, 0, i3, true, tLRPC$User, tLRPC$Chat, z, z2);
                }
            }
        }
    }

    public String getLastSearchQuery() {
        return this.lastSearchQuery;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadMedia(final long r17, final int r19, final int r20, final int r21, final int r22, final int r23, int r24, final int r25, final int r26) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.loadMedia(long, int, int, int, int, int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMedia$115(long j, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            getMessagesController().removeDeletedMessagesFromArray(j, tLRPC$messages_Messages.messages);
            boolean z2 = false;
            if (i == 0 ? tLRPC$messages_Messages.messages.size() == 0 : tLRPC$messages_Messages.messages.size() <= 1) {
                z2 = true;
            }
            processLoadedMedia(tLRPC$messages_Messages, j, i2, i3, i, i4, i5, 0, i6, z, z2, i7);
        }
    }

    public void getMediaCounts(final long j, final int i, final int i2) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$getMediaCounts$120(i, j, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b3 A[Catch: Exception -> 0x01f9, TryCatch #0 {Exception -> 0x01f9, blocks: (B:3:0x0004, B:5:0x004d, B:7:0x0090, B:9:0x0096, B:12:0x009e, B:13:0x00ad, B:17:0x00b9, B:19:0x00bd, B:21:0x00e7, B:23:0x00f0, B:22:0x00ee, B:24:0x00ff, B:25:0x0102, B:26:0x0114, B:28:0x0127, B:31:0x0133, B:33:0x0137, B:63:0x01b9, B:35:0x013c, B:37:0x0140, B:40:0x0146, B:57:0x01ac, B:60:0x01b3, B:62:0x01b7, B:43:0x0154, B:45:0x0161, B:47:0x016e, B:49:0x017b, B:52:0x0189, B:55:0x0197, B:56:0x01a2, B:64:0x01c0, B:66:0x01c8, B:68:0x01e8, B:6:0x0072), top: B:73:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getMediaCounts$120(final int r18, final long r19, int r21) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$getMediaCounts$120(int, long, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCounts$116(long j, int i, int[] iArr) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mediaCountsDidLoad, Long.valueOf(j), Integer.valueOf(i), iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCounts$118(final int[] iArr, final long j, final int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        int i2;
        int i3;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] < 0) {
                iArr[i4] = 0;
            }
        }
        if (tLObject != null) {
            TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
            int size = tLRPC$Vector.objects.size();
            for (int i5 = 0; i5 < size; i5++) {
                TLRPC$TL_messages_searchCounter tLRPC$TL_messages_searchCounter = (TLRPC$TL_messages_searchCounter) tLRPC$Vector.objects.get(i5);
                TLRPC$MessagesFilter tLRPC$MessagesFilter = tLRPC$TL_messages_searchCounter.filter;
                if (tLRPC$MessagesFilter instanceof TLRPC$TL_inputMessagesFilterPhotoVideo) {
                    i3 = 0;
                } else {
                    if (tLRPC$MessagesFilter instanceof TLRPC$TL_inputMessagesFilterDocument) {
                        i2 = 1;
                    } else if (tLRPC$MessagesFilter instanceof TLRPC$TL_inputMessagesFilterRoundVoice) {
                        i2 = 2;
                    } else if (tLRPC$MessagesFilter instanceof TLRPC$TL_inputMessagesFilterUrl) {
                        i2 = 3;
                    } else if (tLRPC$MessagesFilter instanceof TLRPC$TL_inputMessagesFilterMusic) {
                        i2 = 4;
                    } else if (tLRPC$MessagesFilter instanceof TLRPC$TL_inputMessagesFilterGif) {
                        i2 = 5;
                    } else if (tLRPC$MessagesFilter instanceof TLRPC$TL_inputMessagesFilterPhotos) {
                        i2 = 6;
                    } else if (tLRPC$MessagesFilter instanceof TLRPC$TL_inputMessagesFilterVideo) {
                        i2 = 7;
                    }
                    i3 = i2;
                }
                iArr[i3] = tLRPC$TL_messages_searchCounter.count;
                putMediaCountDatabase(j, i, i3, iArr[i3]);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$getMediaCounts$117(j, i, iArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCounts$117(long j, int i, int[] iArr) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mediaCountsDidLoad, Long.valueOf(j), Integer.valueOf(i), iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCounts$119(long j, int i, int[] iArr) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mediaCountsDidLoad, Long.valueOf(j), Integer.valueOf(i), iArr);
    }

    public void getMediaCount(final long j, final int i, final int i2, final int i3, boolean z) {
        if (z || DialogObject.isEncryptedDialog(j)) {
            getMediaCountDatabase(j, i, i2, i3);
            return;
        }
        TLRPC$TL_messages_getSearchCounters tLRPC$TL_messages_getSearchCounters = new TLRPC$TL_messages_getSearchCounters();
        if (i2 == 0) {
            tLRPC$TL_messages_getSearchCounters.filters.add(new TLRPC$TL_inputMessagesFilterPhotoVideo());
        } else if (i2 == 1) {
            tLRPC$TL_messages_getSearchCounters.filters.add(new TLRPC$TL_inputMessagesFilterDocument());
        } else if (i2 == 2) {
            tLRPC$TL_messages_getSearchCounters.filters.add(new TLRPC$TL_inputMessagesFilterRoundVoice());
        } else if (i2 == 3) {
            tLRPC$TL_messages_getSearchCounters.filters.add(new TLRPC$TL_inputMessagesFilterUrl());
        } else if (i2 == 4) {
            tLRPC$TL_messages_getSearchCounters.filters.add(new TLRPC$TL_inputMessagesFilterMusic());
        } else if (i2 == 5) {
            tLRPC$TL_messages_getSearchCounters.filters.add(new TLRPC$TL_inputMessagesFilterGif());
        }
        if (i != 0) {
            tLRPC$TL_messages_getSearchCounters.top_msg_id = i;
            tLRPC$TL_messages_getSearchCounters.flags = 1 | tLRPC$TL_messages_getSearchCounters.flags;
        }
        TLRPC$InputPeer inputPeer = getMessagesController().getInputPeer(j);
        tLRPC$TL_messages_getSearchCounters.peer = inputPeer;
        if (inputPeer == null) {
            return;
        }
        getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tLRPC$TL_messages_getSearchCounters, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda195
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$getMediaCount$121(j, i, i2, i3, tLObject, tLRPC$TL_error);
            }
        }), i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCount$121(long j, int i, int i2, int i3, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
            if (tLRPC$Vector.objects.isEmpty()) {
                return;
            }
            processLoadedMediaCount(((TLRPC$TL_messages_searchCounter) tLRPC$Vector.objects.get(0)).count, j, i, i2, i3, false, 0);
        }
    }

    public static int getMediaType(TLRPC$Message tLRPC$Message) {
        if (tLRPC$Message == null) {
            return -1;
        }
        if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto) {
            return 0;
        }
        if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaDocument) {
            TLRPC$Document tLRPC$Document = MessageObject.getMedia(tLRPC$Message).document;
            if (tLRPC$Document == null) {
                return -1;
            }
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            for (int i = 0; i < tLRPC$Document.attributes.size(); i++) {
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i);
                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo) {
                    z = tLRPC$DocumentAttribute.round_message;
                    z3 = !z;
                    z2 = z;
                } else if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAnimated) {
                    z4 = true;
                } else if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                    z = tLRPC$DocumentAttribute.voice;
                    z6 = !z;
                } else if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeSticker) {
                    z5 = true;
                }
            }
            if (z || z2) {
                return 2;
            }
            if (!z3 || z4 || z5) {
                if (z5) {
                    return -1;
                }
                if (z4) {
                    return 5;
                }
                return z6 ? 4 : 1;
            }
            return 0;
        }
        ArrayList<TLRPC$MessageEntity> arrayList = tLRPC$Message.entities;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i2 = 0; i2 < tLRPC$Message.entities.size(); i2++) {
                TLRPC$MessageEntity tLRPC$MessageEntity = tLRPC$Message.entities.get(i2);
                if ((tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityUrl) || (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityTextUrl) || (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityEmail)) {
                    return 3;
                }
            }
        }
        return -1;
    }

    public static boolean canAddMessageToMedia(TLRPC$Message tLRPC$Message) {
        boolean z = tLRPC$Message instanceof TLRPC$TL_message_secret;
        if (!z || (!((MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto) || MessageObject.isVideoMessage(tLRPC$Message) || MessageObject.isGifMessage(tLRPC$Message)) || MessageObject.getMedia(tLRPC$Message).ttl_seconds == 0 || MessageObject.getMedia(tLRPC$Message).ttl_seconds > 60)) {
            return (z || !(tLRPC$Message instanceof TLRPC$TL_message) || (!((MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto) || (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaDocument)) || MessageObject.getMedia(tLRPC$Message).ttl_seconds == 0)) && getMediaType(tLRPC$Message) != -1;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processLoadedMedia(final TLRPC$messages_Messages tLRPC$messages_Messages, final long j, int i, int i2, final int i3, final int i4, int i5, final int i6, final int i7, boolean z, final boolean z2, final int i8) {
        ArrayList<TLRPC$Message> arrayList;
        ArrayList<TLRPC$Message> arrayList2;
        if (BuildVars.LOGS_ENABLED) {
            int i9 = 0;
            if (tLRPC$messages_Messages != null && (arrayList2 = tLRPC$messages_Messages.messages) != null) {
                i9 = arrayList2.size();
            }
            FileLog.m102d("process load media messagesCount " + i9 + " did " + j + " topicId " + i5 + " count = " + i + " max_id=" + i2 + " min_id=" + i3 + " type = " + i4 + " cache = " + i6 + " classGuid = " + i7);
        }
        if (i6 != 0 && tLRPC$messages_Messages != null && (arrayList = tLRPC$messages_Messages.messages) != null && (((arrayList.isEmpty() && i3 == 0) || (tLRPC$messages_Messages.messages.size() <= 1 && i3 != 0)) && !DialogObject.isEncryptedDialog(j))) {
            if (i6 == 2) {
                return;
            }
            loadMedia(j, i, i2, i3, i4, i5, 0, i7, i8);
            return;
        }
        if (i6 == 0) {
            ImageLoader.saveMessagesThumbs(tLRPC$messages_Messages.messages);
            getMessagesStorage().putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
            putMediaDatabase(j, i5, i4, tLRPC$messages_Messages.messages, i2, i3, z2);
        }
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda124
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedMedia$125(tLRPC$messages_Messages, i6, j, i7, i4, z2, i3, i8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMedia$125(final TLRPC$messages_Messages tLRPC$messages_Messages, final int i, final long j, final int i2, final int i3, final boolean z, final int i4, final int i5) {
        LongSparseArray longSparseArray = new LongSparseArray();
        for (int i6 = 0; i6 < tLRPC$messages_Messages.users.size(); i6++) {
            TLRPC$User tLRPC$User = tLRPC$messages_Messages.users.get(i6);
            longSparseArray.put(tLRPC$User.f1749id, tLRPC$User);
        }
        final ArrayList<MessageObject> arrayList = new ArrayList<>();
        for (int i7 = 0; i7 < tLRPC$messages_Messages.messages.size(); i7++) {
            MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$messages_Messages.messages.get(i7), (LongSparseArray<TLRPC$User>) longSparseArray, true, false);
            messageObject.createStrippedThumb();
            arrayList.add(messageObject);
        }
        getFileLoader().checkMediaExistance(arrayList);
        final Runnable runnable = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda125
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedMedia$123(tLRPC$messages_Messages, i, j, arrayList, i2, i3, z, i4, i5);
            }
        };
        if (getMessagesController().getTranslateController().isFeatureAvailable()) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$processLoadedMedia$124(arrayList, runnable);
                }
            });
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMedia$123(final TLRPC$messages_Messages tLRPC$messages_Messages, final int i, final long j, final ArrayList arrayList, final int i2, final int i3, final boolean z, final int i4, final int i5) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda126
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedMedia$122(tLRPC$messages_Messages, i, j, arrayList, i2, i3, z, i4, i5);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMedia$122(TLRPC$messages_Messages tLRPC$messages_Messages, int i, long j, ArrayList arrayList, int i2, int i3, boolean z, int i4, int i5) {
        int i6 = tLRPC$messages_Messages.count;
        getMessagesController().putUsers(tLRPC$messages_Messages.users, i != 0);
        getMessagesController().putChats(tLRPC$messages_Messages.chats, i != 0);
        NotificationCenter notificationCenter = getNotificationCenter();
        int i7 = NotificationCenter.mediaDidLoad;
        Object[] objArr = new Object[8];
        objArr[0] = Long.valueOf(j);
        objArr[1] = Integer.valueOf(i6);
        objArr[2] = arrayList;
        objArr[3] = Integer.valueOf(i2);
        objArr[4] = Integer.valueOf(i3);
        objArr[5] = Boolean.valueOf(z);
        objArr[6] = Boolean.valueOf(i4 != 0);
        objArr[7] = Integer.valueOf(i5);
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i7, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedMedia$124(ArrayList arrayList, Runnable runnable) {
        for (int i = 0; i < arrayList.size(); i++) {
            MessageObject messageObject = (MessageObject) arrayList.get(i);
            TLRPC$Message messageWithCustomParamsOnlyInternal = getMessagesStorage().getMessageWithCustomParamsOnlyInternal(messageObject.getId(), messageObject.getDialogId());
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            tLRPC$Message.translatedToLanguage = messageWithCustomParamsOnlyInternal.translatedToLanguage;
            tLRPC$Message.translatedText = messageWithCustomParamsOnlyInternal.translatedText;
            messageObject.updateTranslation();
        }
        runnable.run();
    }

    private void processLoadedMediaCount(final int i, final long j, final int i2, final int i3, final int i4, final boolean z, final int i5) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$processLoadedMediaCount$126(j, z, i, i3, i5, i2, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
        if (r23 == 2) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processLoadedMediaCount$126(long r19, boolean r21, int r22, int r23, int r24, int r25, int r26) {
        /*
            r18 = this;
            r6 = r22
            boolean r0 = org.telegram.messenger.DialogObject.isEncryptedDialog(r19)
            r7 = 2
            r8 = -1
            r9 = 1
            r10 = 0
            if (r21 == 0) goto L1b
            if (r6 == r8) goto L15
            if (r6 != 0) goto L1b
            r5 = r23
            if (r5 != r7) goto L1d
            goto L17
        L15:
            r5 = r23
        L17:
            if (r0 != 0) goto L1d
            r1 = r9
            goto L1e
        L1b:
            r5 = r23
        L1d:
            r1 = r10
        L1e:
            if (r1 != 0) goto L26
            r2 = r24
            if (r2 != r9) goto L35
            if (r0 != 0) goto L35
        L26:
            r17 = 0
            r11 = r18
            r12 = r19
            r14 = r25
            r15 = r23
            r16 = r26
            r11.getMediaCount(r12, r14, r15, r16, r17)
        L35:
            if (r1 != 0) goto L78
            if (r21 != 0) goto L46
            r0 = r18
            r1 = r19
            r3 = r25
            r4 = r23
            r5 = r22
            r0.putMediaCountDatabase(r1, r3, r4, r5)
        L46:
            org.telegram.messenger.NotificationCenter r0 = r18.getNotificationCenter()
            int r1 = org.telegram.messenger.NotificationCenter.mediaCountDidLoad
            r2 = 5
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Long r3 = java.lang.Long.valueOf(r19)
            r2[r10] = r3
            java.lang.Integer r3 = java.lang.Integer.valueOf(r25)
            r2[r9] = r3
            if (r21 == 0) goto L60
            if (r6 != r8) goto L60
            goto L61
        L60:
            r10 = r6
        L61:
            java.lang.Integer r3 = java.lang.Integer.valueOf(r10)
            r2[r7] = r3
            r3 = 3
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r21)
            r2[r3] = r4
            r3 = 4
            java.lang.Integer r4 = java.lang.Integer.valueOf(r23)
            r2[r3] = r4
            r0.lambda$postNotificationNameOnUIThread$1(r1, r2)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$processLoadedMediaCount$126(long, boolean, int, int, int, int, int):void");
    }

    private void putMediaCountDatabase(final long j, final int i, final int i2, final int i3) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putMediaCountDatabase$127(i, j, i2, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putMediaCountDatabase$127(int i, long j, int i2, int i3) {
        SQLitePreparedStatement executeFast;
        try {
            if (i != 0) {
                executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO media_counts_topics VALUES(?, ?, ?, ?, ?)");
            } else {
                executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO media_counts_v2 VALUES(?, ?, ?, ?)");
            }
            executeFast.requery();
            int i4 = 2;
            executeFast.bindLong(1, j);
            if (i != 0) {
                executeFast.bindInteger(2, i);
                i4 = 3;
            }
            int i5 = i4 + 1;
            executeFast.bindInteger(i4, i2);
            executeFast.bindInteger(i5, i3);
            executeFast.bindInteger(i5 + 1, 0);
            executeFast.step();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private void getMediaCountDatabase(final long j, final int i, final int i2, final int i3) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$getMediaCountDatabase$128(i, j, i2, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMediaCountDatabase$128(int i, long j, int i2, int i3) {
        SQLiteCursor queryFinalized;
        int i4;
        int i5;
        try {
            if (i != 0) {
                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT count, old FROM media_counts_topics WHERE uid = %d AND topic_id = %d AND type = %d LIMIT 1", Long.valueOf(j), Integer.valueOf(i), Integer.valueOf(i2)), new Object[0]);
            } else {
                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT count, old FROM media_counts_v2 WHERE uid = %d AND type = %d LIMIT 1", Long.valueOf(j), Integer.valueOf(i2)), new Object[0]);
            }
            if (queryFinalized.next()) {
                i5 = queryFinalized.intValue(0);
                i4 = queryFinalized.intValue(1);
            } else {
                i4 = 0;
                i5 = -1;
            }
            queryFinalized.dispose();
            if (i5 == -1 && DialogObject.isEncryptedDialog(j)) {
                SQLiteCursor queryFinalized2 = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT COUNT(mid) FROM media_v4 WHERE uid = %d AND type = %d LIMIT 1", Long.valueOf(j), Integer.valueOf(i2)), new Object[0]);
                if (queryFinalized2.next()) {
                    i5 = queryFinalized2.intValue(0);
                }
                int i6 = i5;
                queryFinalized2.dispose();
                if (i6 != -1) {
                    putMediaCountDatabase(j, i, i2, i6);
                }
                i5 = i6;
            }
            processLoadedMediaCount(i5, j, i, i2, i3, true, i4);
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaDataController$1 */
    /* loaded from: classes4.dex */
    public class RunnableC36121 implements Runnable {
        final /* synthetic */ int val$classGuid;
        final /* synthetic */ int val$count;
        final /* synthetic */ int val$fromCache;
        final /* synthetic */ boolean val$isChannel;
        final /* synthetic */ int val$max_id;
        final /* synthetic */ int val$min_id;
        final /* synthetic */ int val$requestIndex;
        final /* synthetic */ int val$topicId;
        final /* synthetic */ int val$type;
        final /* synthetic */ long val$uid;

        RunnableC36121(int i, long j, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8) {
            this.val$count = i;
            this.val$uid = j;
            this.val$min_id = i2;
            this.val$topicId = i3;
            this.val$type = i4;
            this.val$max_id = i5;
            this.val$classGuid = i6;
            this.val$fromCache = i7;
            this.val$isChannel = z;
            this.val$requestIndex = i8;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaDataController mediaDataController;
            long j;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            boolean z;
            int i8;
            boolean z2;
            SQLiteCursor queryFinalized;
            boolean z3;
            boolean z4;
            boolean z5;
            int i9;
            SQLiteDatabase sQLiteDatabase;
            SQLiteCursor queryFinalized2;
            int i10;
            int intValue;
            SQLitePreparedStatement executeFast;
            int i11;
            TLRPC$TL_messages_messages tLRPC$TL_messages_messages = new TLRPC$TL_messages_messages();
            try {
                try {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    int i12 = this.val$count + 1;
                    SQLiteDatabase database = MediaDataController.this.getMessagesStorage().getDatabase();
                    if (!DialogObject.isEncryptedDialog(this.val$uid)) {
                        if (this.val$min_id == 0) {
                            SQLiteCursor queryFinalized3 = this.val$topicId != 0 ? database.queryFinalized(String.format(Locale.US, "SELECT start FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start IN (0, 1)", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$type)), new Object[0]) : database.queryFinalized(String.format(Locale.US, "SELECT start FROM media_holes_v2 WHERE uid = %d AND type = %d AND start IN (0, 1)", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type)), new Object[0]);
                            if (queryFinalized3.next()) {
                                if (queryFinalized3.intValue(0) == 1) {
                                    z5 = true;
                                    queryFinalized3.dispose();
                                }
                            } else {
                                queryFinalized3.dispose();
                                queryFinalized3 = this.val$topicId != 0 ? database.queryFinalized(String.format(Locale.US, "SELECT min(mid) FROM media_topics WHERE uid = %d AND topic_id = %d AND type = %d AND mid > 0", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$type)), new Object[0]) : database.queryFinalized(String.format(Locale.US, "SELECT min(mid) FROM media_v4 WHERE uid = %d AND type = %d AND mid > 0", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type)), new Object[0]);
                                if (queryFinalized3.next() && (intValue = queryFinalized3.intValue(0)) != 0) {
                                    if (this.val$topicId != 0) {
                                        executeFast = database.executeFast("REPLACE INTO media_holes_topics VALUES(?, ?, ?, ?, ?)");
                                    } else {
                                        executeFast = database.executeFast("REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)");
                                    }
                                    executeFast.requery();
                                    executeFast.bindLong(1, this.val$uid);
                                    int i13 = this.val$topicId;
                                    if (i13 != 0) {
                                        executeFast.bindInteger(2, i13);
                                        i11 = 3;
                                    } else {
                                        i11 = 2;
                                    }
                                    int i14 = i11 + 1;
                                    executeFast.bindInteger(i11, this.val$type);
                                    executeFast.bindInteger(i14, 0);
                                    executeFast.bindInteger(i14 + 1, intValue);
                                    executeFast.step();
                                    executeFast.dispose();
                                }
                            }
                            z5 = false;
                            queryFinalized3.dispose();
                        } else {
                            z5 = false;
                        }
                        if (this.val$max_id != 0) {
                            if (this.val$topicId != 0) {
                                queryFinalized2 = database.queryFinalized(String.format(Locale.US, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$type), Integer.valueOf(this.val$max_id)), new Object[0]);
                                sQLiteDatabase = database;
                            } else {
                                sQLiteDatabase = database;
                                queryFinalized2 = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND start <= %d ORDER BY end DESC LIMIT 1", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type), Integer.valueOf(this.val$max_id)), new Object[0]);
                            }
                            if (queryFinalized2.next()) {
                                queryFinalized2.intValue(0);
                                i10 = queryFinalized2.intValue(1);
                            } else {
                                i10 = 0;
                            }
                            queryFinalized2.dispose();
                            if (this.val$topicId != 0) {
                                if (i10 > 1) {
                                    queryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid < %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$max_id), Integer.valueOf(i10), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                                    z5 = false;
                                } else {
                                    queryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$max_id), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                                }
                            } else if (i10 > 1) {
                                queryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid < %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$max_id), Integer.valueOf(i10), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                                z5 = false;
                            } else {
                                queryFinalized = sQLiteDatabase.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$max_id), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                            }
                            z4 = z5;
                        } else if (this.val$min_id != 0) {
                            SQLiteCursor queryFinalized4 = this.val$topicId != 0 ? database.queryFinalized(String.format(Locale.US, "SELECT start, end FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$type), Integer.valueOf(this.val$min_id)), new Object[0]) : database.queryFinalized(String.format(Locale.US, "SELECT start, end FROM media_holes_v2 WHERE uid = %d AND type = %d AND end >= %d ORDER BY end ASC LIMIT 1", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type), Integer.valueOf(this.val$min_id)), new Object[0]);
                            if (queryFinalized4.next()) {
                                i9 = queryFinalized4.intValue(0);
                                queryFinalized4.intValue(1);
                            } else {
                                i9 = 0;
                            }
                            queryFinalized4.dispose();
                            if (this.val$topicId != 0) {
                                if (i9 > 1) {
                                    queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid >= %d AND mid <= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$min_id), Integer.valueOf(i9), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                                    z3 = true;
                                    z4 = z5;
                                } else {
                                    queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND mid >= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$min_id), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                                    z5 = true;
                                    z3 = true;
                                    z4 = z5;
                                }
                            } else if (i9 > 1) {
                                queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid >= %d AND mid <= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$min_id), Integer.valueOf(i9), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                                z3 = true;
                                z4 = z5;
                            } else {
                                queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND mid >= %d AND type = %d ORDER BY date ASC, mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$min_id), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                                z5 = true;
                                z3 = true;
                                z4 = z5;
                            }
                        } else {
                            SQLiteCursor queryFinalized5 = this.val$topicId != 0 ? database.queryFinalized(String.format(Locale.US, "SELECT max(end) FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$type)), new Object[0]) : database.queryFinalized(String.format(Locale.US, "SELECT max(end) FROM media_holes_v2 WHERE uid = %d AND type = %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type)), new Object[0]);
                            int intValue2 = queryFinalized5.next() ? queryFinalized5.intValue(0) : 0;
                            queryFinalized5.dispose();
                            queryFinalized = this.val$topicId != 0 ? intValue2 > 1 ? database.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(intValue2), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]) : database.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_topics WHERE uid = %d AND topic_id = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]) : intValue2 > 1 ? database.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(intValue2), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]) : database.queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                        }
                        z3 = false;
                        z4 = z5;
                    } else {
                        if (this.val$topicId != 0) {
                            if (this.val$max_id != 0) {
                                queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$max_id), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                            } else {
                                queryFinalized = this.val$min_id != 0 ? database.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$min_id), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]) : database.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_topics as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.topic_id = %d AND type = %d ORDER BY m.mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$topicId), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                            }
                        } else if (this.val$max_id != 0) {
                            queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$max_id), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                        } else {
                            queryFinalized = this.val$min_id != 0 ? database.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid < %d AND type = %d ORDER BY m.mid DESC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$min_id), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]) : database.queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, r.random_id FROM media_v4 as m LEFT JOIN randoms_v2 as r ON r.mid = m.mid WHERE m.uid = %d AND type = %d ORDER BY m.mid ASC LIMIT %d", Long.valueOf(this.val$uid), Integer.valueOf(this.val$type), Integer.valueOf(i12)), new Object[0]);
                        }
                        z3 = false;
                        z4 = true;
                    }
                    while (queryFinalized.next()) {
                        NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                        if (byteBufferValue != null) {
                            TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                            TLdeserialize.readAttachPath(byteBufferValue, MediaDataController.this.getUserConfig().clientUserId);
                            byteBufferValue.reuse();
                            TLdeserialize.f1626id = queryFinalized.intValue(1);
                            long j2 = this.val$uid;
                            TLdeserialize.dialog_id = j2;
                            if (DialogObject.isEncryptedDialog(j2)) {
                                TLdeserialize.random_id = queryFinalized.longValue(2);
                            }
                            if (z3) {
                                tLRPC$TL_messages_messages.messages.add(0, TLdeserialize);
                            } else {
                                tLRPC$TL_messages_messages.messages.add(TLdeserialize);
                            }
                            MessagesStorage.addUsersAndChatsFromMessage(TLdeserialize, arrayList, arrayList2, null);
                        }
                    }
                    queryFinalized.dispose();
                    if (!arrayList.isEmpty()) {
                        MediaDataController.this.getMessagesStorage().getUsersInternal(TextUtils.join(",", arrayList), tLRPC$TL_messages_messages.users);
                    }
                    if (!arrayList2.isEmpty()) {
                        MediaDataController.this.getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList2), tLRPC$TL_messages_messages.chats);
                    }
                    if (tLRPC$TL_messages_messages.messages.size() > this.val$count && this.val$min_id == 0) {
                        ArrayList<TLRPC$Message> arrayList3 = tLRPC$TL_messages_messages.messages;
                        arrayList3.remove(arrayList3.size() - 1);
                        z2 = false;
                    } else {
                        z2 = this.val$min_id != 0 ? false : z4;
                    }
                    final int i15 = this.val$classGuid;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaDataController.RunnableC36121.this.lambda$run$0(this, i15);
                        }
                    });
                    mediaDataController = MediaDataController.this;
                    j = this.val$uid;
                    i = this.val$count;
                    i2 = this.val$max_id;
                    i3 = this.val$min_id;
                    i4 = this.val$type;
                    i5 = this.val$topicId;
                    i6 = this.val$fromCache;
                    i7 = this.val$classGuid;
                    z = this.val$isChannel;
                    i8 = this.val$requestIndex;
                } catch (Exception e) {
                    tLRPC$TL_messages_messages.messages.clear();
                    tLRPC$TL_messages_messages.chats.clear();
                    tLRPC$TL_messages_messages.users.clear();
                    FileLog.m99e(e);
                    final int i16 = this.val$classGuid;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaDataController.RunnableC36121.this.lambda$run$0(this, i16);
                        }
                    });
                    mediaDataController = MediaDataController.this;
                    j = this.val$uid;
                    i = this.val$count;
                    i2 = this.val$max_id;
                    i3 = this.val$min_id;
                    i4 = this.val$type;
                    i5 = this.val$topicId;
                    i6 = this.val$fromCache;
                    i7 = this.val$classGuid;
                    z = this.val$isChannel;
                    i8 = this.val$requestIndex;
                    z2 = false;
                }
                mediaDataController.processLoadedMedia(tLRPC$TL_messages_messages, j, i, i2, i3, i4, i5, i6, i7, z, z2, i8);
            } catch (Throwable th) {
                final int i17 = this.val$classGuid;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.RunnableC36121.this.lambda$run$0(this, i17);
                    }
                });
                MediaDataController.this.processLoadedMedia(tLRPC$TL_messages_messages, this.val$uid, this.val$count, this.val$max_id, this.val$min_id, this.val$type, this.val$topicId, this.val$fromCache, this.val$classGuid, this.val$isChannel, false, this.val$requestIndex);
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Runnable runnable, int i) {
            MediaDataController.this.getMessagesStorage().completeTaskForGuid(runnable, i);
        }
    }

    private void loadMediaDatabase(long j, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, int i8) {
        RunnableC36121 runnableC36121 = new RunnableC36121(i, j, i3, i5, i4, i2, i6, i7, z, i8);
        MessagesStorage messagesStorage = getMessagesStorage();
        messagesStorage.getStorageQueue().postRunnable(runnableC36121);
        messagesStorage.bindTaskToGuid(runnableC36121, i6);
    }

    private void putMediaDatabase(final long j, final int i, final int i2, final ArrayList<TLRPC$Message> arrayList, final int i3, final int i4, final boolean z) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putMediaDatabase$129(i4, arrayList, z, j, i3, i2, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putMediaDatabase$129(int i, ArrayList arrayList, boolean z, long j, int i2, int i3, int i4) {
        SQLitePreparedStatement executeFast;
        if (i == 0) {
            try {
                if (arrayList.isEmpty() || z) {
                    getMessagesStorage().doneHolesInMedia(j, i2, i3, i4);
                    if (arrayList.isEmpty()) {
                        return;
                    }
                }
            } catch (Exception e) {
                FileLog.m99e(e);
                return;
            }
        }
        getMessagesStorage().getDatabase().beginTransaction();
        if (i4 != 0) {
            executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO media_topics VALUES(?, ?, ?, ?, ?, ?)");
        } else {
            executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO media_v4 VALUES(?, ?, ?, ?, ?)");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TLRPC$Message tLRPC$Message = (TLRPC$Message) it.next();
            if (canAddMessageToMedia(tLRPC$Message)) {
                executeFast.requery();
                MessageObject.normalizeFlags(tLRPC$Message);
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$Message.getObjectSize());
                tLRPC$Message.serializeToStream(nativeByteBuffer);
                executeFast.bindInteger(1, tLRPC$Message.f1626id);
                int i5 = 3;
                executeFast.bindLong(2, j);
                if (i4 != 0) {
                    executeFast.bindInteger(3, i4);
                    i5 = 4;
                }
                int i6 = i5 + 1;
                executeFast.bindInteger(i5, tLRPC$Message.date);
                executeFast.bindInteger(i6, i3);
                executeFast.bindByteBuffer(i6 + 1, nativeByteBuffer);
                executeFast.step();
                nativeByteBuffer.reuse();
            }
        }
        executeFast.dispose();
        if (!z || i2 != 0 || i != 0) {
            int i7 = (z && i == 0) ? 1 : ((TLRPC$Message) arrayList.get(arrayList.size() - 1)).f1626id;
            if (i != 0) {
                getMessagesStorage().closeHolesInMedia(j, i7, ((TLRPC$Message) arrayList.get(0)).f1626id, i3, i4);
            } else if (i2 != 0) {
                getMessagesStorage().closeHolesInMedia(j, i7, i2, i3, i4);
            } else {
                getMessagesStorage().closeHolesInMedia(j, i7, Integer.MAX_VALUE, i3, i4);
            }
        }
        getMessagesStorage().getDatabase().commitTransaction();
    }

    public void loadMusic(final long j, final long j2, final long j3) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadMusic$131(j, j2, j3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMusic$131(final long j, long j2, long j3) {
        SQLiteCursor queryFinalized;
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (i < 2) {
            ArrayList arrayList3 = i == 0 ? arrayList : arrayList2;
            if (i == 0) {
                try {
                    if (!DialogObject.isEncryptedDialog(j)) {
                        queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000", Long.valueOf(j), Long.valueOf(j2), 4), new Object[0]);
                    } else {
                        queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000", Long.valueOf(j), Long.valueOf(j2), 4), new Object[0]);
                    }
                } catch (Exception e) {
                    e = e;
                    FileLog.m99e(e);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda53
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaDataController.this.lambda$loadMusic$130(j, arrayList, arrayList2);
                        }
                    });
                }
            } else if (!DialogObject.isEncryptedDialog(j)) {
                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000", Long.valueOf(j), Long.valueOf(j3), 4), new Object[0]);
            } else {
                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT 1000", Long.valueOf(j), Long.valueOf(j3), 4), new Object[0]);
            }
            while (queryFinalized.next()) {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                if (byteBufferValue != null) {
                    TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    TLdeserialize.readAttachPath(byteBufferValue, getUserConfig().clientUserId);
                    byteBufferValue.reuse();
                    if (MessageObject.isMusicMessage(TLdeserialize)) {
                        TLdeserialize.f1626id = queryFinalized.intValue(1);
                        try {
                            TLdeserialize.dialog_id = j;
                        } catch (Exception e2) {
                            e = e2;
                        }
                        try {
                            arrayList3.add(0, new MessageObject(this.currentAccount, TLdeserialize, false, true));
                        } catch (Exception e3) {
                            e = e3;
                            FileLog.m99e(e);
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda53
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MediaDataController.this.lambda$loadMusic$130(j, arrayList, arrayList2);
                                }
                            });
                        }
                    }
                }
            }
            queryFinalized.dispose();
            i++;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadMusic$130(j, arrayList, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMusic$130(long j, ArrayList arrayList, ArrayList arrayList2) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.musicDidLoad, Long.valueOf(j), arrayList, arrayList2);
    }

    public void buildShortcuts() {
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        int maxShortcutCountPerActivity = ShortcutManagerCompat.getMaxShortcutCountPerActivity(ApplicationLoader.applicationContext) - 2;
        if (maxShortcutCountPerActivity <= 0) {
            maxShortcutCountPerActivity = 5;
        }
        final ArrayList arrayList = new ArrayList();
        if (SharedConfig.passcodeHash.length() <= 0) {
            for (int i = 0; i < this.hints.size(); i++) {
                arrayList.add(this.hints.get(i));
                if (arrayList.size() == maxShortcutCountPerActivity - 2) {
                    break;
                }
            }
        }
        final boolean z = Build.VERSION.SDK_INT >= 30;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda134
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$buildShortcuts$132(z, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02ae A[Catch: all -> 0x02f4, TryCatch #1 {all -> 0x02f4, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0040, B:33:0x00b8, B:35:0x00ff, B:41:0x011c, B:42:0x0127, B:44:0x012d, B:46:0x0148, B:49:0x0172, B:54:0x017e, B:56:0x018a, B:62:0x019d, B:81:0x027a, B:84:0x0291, B:86:0x02ae, B:88:0x02b3, B:91:0x02c8, B:92:0x02d2, B:94:0x02df, B:96:0x02ea, B:95:0x02e5, B:89:0x02bb, B:79:0x0274, B:57:0x018d, B:59:0x0193, B:47:0x015c, B:36:0x0105, B:38:0x010e, B:40:0x0119, B:39:0x0114, B:10:0x0047, B:12:0x004f, B:14:0x0055, B:15:0x0059, B:17:0x005f, B:19:0x0081, B:21:0x0087, B:23:0x0097, B:24:0x009a, B:25:0x00a0, B:27:0x00a6, B:30:0x00ad, B:32:0x00b3), top: B:103:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02b3 A[Catch: all -> 0x02f4, TryCatch #1 {all -> 0x02f4, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0040, B:33:0x00b8, B:35:0x00ff, B:41:0x011c, B:42:0x0127, B:44:0x012d, B:46:0x0148, B:49:0x0172, B:54:0x017e, B:56:0x018a, B:62:0x019d, B:81:0x027a, B:84:0x0291, B:86:0x02ae, B:88:0x02b3, B:91:0x02c8, B:92:0x02d2, B:94:0x02df, B:96:0x02ea, B:95:0x02e5, B:89:0x02bb, B:79:0x0274, B:57:0x018d, B:59:0x0193, B:47:0x015c, B:36:0x0105, B:38:0x010e, B:40:0x0119, B:39:0x0114, B:10:0x0047, B:12:0x004f, B:14:0x0055, B:15:0x0059, B:17:0x005f, B:19:0x0081, B:21:0x0087, B:23:0x0097, B:24:0x009a, B:25:0x00a0, B:27:0x00a6, B:30:0x00ad, B:32:0x00b3), top: B:103:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02bb A[Catch: all -> 0x02f4, TryCatch #1 {all -> 0x02f4, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0040, B:33:0x00b8, B:35:0x00ff, B:41:0x011c, B:42:0x0127, B:44:0x012d, B:46:0x0148, B:49:0x0172, B:54:0x017e, B:56:0x018a, B:62:0x019d, B:81:0x027a, B:84:0x0291, B:86:0x02ae, B:88:0x02b3, B:91:0x02c8, B:92:0x02d2, B:94:0x02df, B:96:0x02ea, B:95:0x02e5, B:89:0x02bb, B:79:0x0274, B:57:0x018d, B:59:0x0193, B:47:0x015c, B:36:0x0105, B:38:0x010e, B:40:0x0119, B:39:0x0114, B:10:0x0047, B:12:0x004f, B:14:0x0055, B:15:0x0059, B:17:0x005f, B:19:0x0081, B:21:0x0087, B:23:0x0097, B:24:0x009a, B:25:0x00a0, B:27:0x00a6, B:30:0x00ad, B:32:0x00b3), top: B:103:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02c8 A[Catch: all -> 0x02f4, TryCatch #1 {all -> 0x02f4, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0040, B:33:0x00b8, B:35:0x00ff, B:41:0x011c, B:42:0x0127, B:44:0x012d, B:46:0x0148, B:49:0x0172, B:54:0x017e, B:56:0x018a, B:62:0x019d, B:81:0x027a, B:84:0x0291, B:86:0x02ae, B:88:0x02b3, B:91:0x02c8, B:92:0x02d2, B:94:0x02df, B:96:0x02ea, B:95:0x02e5, B:89:0x02bb, B:79:0x0274, B:57:0x018d, B:59:0x0193, B:47:0x015c, B:36:0x0105, B:38:0x010e, B:40:0x0119, B:39:0x0114, B:10:0x0047, B:12:0x004f, B:14:0x0055, B:15:0x0059, B:17:0x005f, B:19:0x0081, B:21:0x0087, B:23:0x0097, B:24:0x009a, B:25:0x00a0, B:27:0x00a6, B:30:0x00ad, B:32:0x00b3), top: B:103:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d2 A[Catch: all -> 0x02f4, TryCatch #1 {all -> 0x02f4, blocks: (B:3:0x0004, B:5:0x0009, B:6:0x002b, B:9:0x0040, B:33:0x00b8, B:35:0x00ff, B:41:0x011c, B:42:0x0127, B:44:0x012d, B:46:0x0148, B:49:0x0172, B:54:0x017e, B:56:0x018a, B:62:0x019d, B:81:0x027a, B:84:0x0291, B:86:0x02ae, B:88:0x02b3, B:91:0x02c8, B:92:0x02d2, B:94:0x02df, B:96:0x02ea, B:95:0x02e5, B:89:0x02bb, B:79:0x0274, B:57:0x018d, B:59:0x0193, B:47:0x015c, B:36:0x0105, B:38:0x010e, B:40:0x0119, B:39:0x0114, B:10:0x0047, B:12:0x004f, B:14:0x0055, B:15:0x0059, B:17:0x005f, B:19:0x0081, B:21:0x0087, B:23:0x0097, B:24:0x009a, B:25:0x00a0, B:27:0x00a6, B:30:0x00ad, B:32:0x00b3), top: B:103:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$buildShortcuts$132(boolean r21, java.util.ArrayList r22) {
        /*
            Method dump skipped, instructions count: 757
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$buildShortcuts$132(boolean, java.util.ArrayList):void");
    }

    public void loadHints(boolean z) {
        if (this.loading || !getUserConfig().suggestContacts) {
            return;
        }
        if (z) {
            if (this.loaded) {
                return;
            }
            this.loading = true;
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadHints$134();
                }
            });
            this.loaded = true;
            return;
        }
        this.loading = true;
        TLRPC$TL_contacts_getTopPeers tLRPC$TL_contacts_getTopPeers = new TLRPC$TL_contacts_getTopPeers();
        tLRPC$TL_contacts_getTopPeers.hash = 0L;
        tLRPC$TL_contacts_getTopPeers.bots_pm = false;
        tLRPC$TL_contacts_getTopPeers.correspondents = true;
        tLRPC$TL_contacts_getTopPeers.groups = false;
        tLRPC$TL_contacts_getTopPeers.channels = false;
        tLRPC$TL_contacts_getTopPeers.bots_inline = true;
        tLRPC$TL_contacts_getTopPeers.offset = 0;
        tLRPC$TL_contacts_getTopPeers.limit = 20;
        getConnectionsManager().sendRequest(tLRPC$TL_contacts_getTopPeers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda174
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadHints$139(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$134() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList<TLRPC$User> arrayList3 = new ArrayList<>();
        final ArrayList<TLRPC$Chat> arrayList4 = new ArrayList<>();
        long clientUserId = getUserConfig().getClientUserId();
        try {
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            int i = 0;
            SQLiteCursor queryFinalized = getMessagesStorage().getDatabase().queryFinalized("SELECT did, type, rating FROM chat_hints WHERE 1 ORDER BY rating DESC", new Object[0]);
            while (queryFinalized.next()) {
                long longValue = queryFinalized.longValue(i);
                if (longValue != clientUserId) {
                    int intValue = queryFinalized.intValue(1);
                    TLRPC$TL_topPeer tLRPC$TL_topPeer = new TLRPC$TL_topPeer();
                    tLRPC$TL_topPeer.rating = queryFinalized.doubleValue(2);
                    if (longValue > 0) {
                        TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
                        tLRPC$TL_topPeer.peer = tLRPC$TL_peerUser;
                        tLRPC$TL_peerUser.user_id = longValue;
                        arrayList5.add(Long.valueOf(longValue));
                    } else {
                        TLRPC$TL_peerChat tLRPC$TL_peerChat = new TLRPC$TL_peerChat();
                        tLRPC$TL_topPeer.peer = tLRPC$TL_peerChat;
                        long j = -longValue;
                        tLRPC$TL_peerChat.chat_id = j;
                        arrayList6.add(Long.valueOf(j));
                    }
                    if (intValue == 0) {
                        arrayList.add(tLRPC$TL_topPeer);
                    } else if (intValue == 1) {
                        arrayList2.add(tLRPC$TL_topPeer);
                    }
                    i = 0;
                }
            }
            queryFinalized.dispose();
            if (!arrayList5.isEmpty()) {
                getMessagesStorage().getUsersInternal(TextUtils.join(",", arrayList5), arrayList3);
            }
            if (!arrayList6.isEmpty()) {
                getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList6), arrayList4);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadHints$133(arrayList3, arrayList4, arrayList, arrayList2);
                }
            });
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$133(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        this.loading = false;
        this.loaded = true;
        this.hints = arrayList3;
        this.inlineBots = arrayList4;
        buildShortcuts();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
        if (Math.abs(getUserConfig().lastHintsSyncTime - ((int) (System.currentTimeMillis() / 1000))) >= 86400) {
            loadHints(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$139(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_contacts_topPeers) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadHints$137(tLObject);
                }
            });
        } else if (tLObject instanceof TLRPC$TL_contacts_topPeersDisabled) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadHints$138();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$137(TLObject tLObject) {
        final TLRPC$TL_contacts_topPeers tLRPC$TL_contacts_topPeers = (TLRPC$TL_contacts_topPeers) tLObject;
        getMessagesController().putUsers(tLRPC$TL_contacts_topPeers.users, false);
        getMessagesController().putChats(tLRPC$TL_contacts_topPeers.chats, false);
        for (int i = 0; i < tLRPC$TL_contacts_topPeers.categories.size(); i++) {
            TLRPC$TL_topPeerCategoryPeers tLRPC$TL_topPeerCategoryPeers = tLRPC$TL_contacts_topPeers.categories.get(i);
            if (tLRPC$TL_topPeerCategoryPeers.category instanceof TLRPC$TL_topPeerCategoryBotsInline) {
                this.inlineBots = tLRPC$TL_topPeerCategoryPeers.peers;
                getUserConfig().botRatingLoadTime = (int) (System.currentTimeMillis() / 1000);
            } else {
                this.hints = tLRPC$TL_topPeerCategoryPeers.peers;
                long clientUserId = getUserConfig().getClientUserId();
                int i2 = 0;
                while (true) {
                    if (i2 >= this.hints.size()) {
                        break;
                    } else if (this.hints.get(i2).peer.user_id == clientUserId) {
                        this.hints.remove(i2);
                        break;
                    } else {
                        i2++;
                    }
                }
                getUserConfig().ratingLoadTime = (int) (System.currentTimeMillis() / 1000);
            }
        }
        getUserConfig().saveConfig(false);
        buildShortcuts();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda110
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadHints$136(tLRPC$TL_contacts_topPeers);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$136(TLRPC$TL_contacts_topPeers tLRPC$TL_contacts_topPeers) {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM chat_hints WHERE 1").stepThis().dispose();
            getMessagesStorage().getDatabase().beginTransaction();
            getMessagesStorage().putUsersAndChats(tLRPC$TL_contacts_topPeers.users, tLRPC$TL_contacts_topPeers.chats, false, false);
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO chat_hints VALUES(?, ?, ?, ?)");
            for (int i = 0; i < tLRPC$TL_contacts_topPeers.categories.size(); i++) {
                TLRPC$TL_topPeerCategoryPeers tLRPC$TL_topPeerCategoryPeers = tLRPC$TL_contacts_topPeers.categories.get(i);
                int i2 = tLRPC$TL_topPeerCategoryPeers.category instanceof TLRPC$TL_topPeerCategoryBotsInline ? 1 : 0;
                for (int i3 = 0; i3 < tLRPC$TL_topPeerCategoryPeers.peers.size(); i3++) {
                    TLRPC$TL_topPeer tLRPC$TL_topPeer = tLRPC$TL_topPeerCategoryPeers.peers.get(i3);
                    executeFast.requery();
                    executeFast.bindLong(1, MessageObject.getPeerId(tLRPC$TL_topPeer.peer));
                    executeFast.bindInteger(2, i2);
                    executeFast.bindDouble(3, tLRPC$TL_topPeer.rating);
                    executeFast.bindInteger(4, 0);
                    executeFast.step();
                }
            }
            executeFast.dispose();
            getMessagesStorage().getDatabase().commitTransaction();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadHints$135();
                }
            });
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$135() {
        getUserConfig().suggestContacts = true;
        getUserConfig().lastHintsSyncTime = (int) (System.currentTimeMillis() / 1000);
        getUserConfig().saveConfig(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadHints$138() {
        getUserConfig().suggestContacts = false;
        getUserConfig().lastHintsSyncTime = (int) (System.currentTimeMillis() / 1000);
        getUserConfig().saveConfig(false);
        clearTopPeers();
    }

    public void clearTopPeers() {
        this.hints.clear();
        this.inlineBots.clear();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$clearTopPeers$140();
            }
        });
        buildShortcuts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearTopPeers$140() {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM chat_hints WHERE 1").stepThis().dispose();
        } catch (Exception unused) {
        }
    }

    public void increaseInlineRaiting(long j) {
        if (getUserConfig().suggestContacts) {
            int max = getUserConfig().botRatingLoadTime != 0 ? Math.max(1, ((int) (System.currentTimeMillis() / 1000)) - getUserConfig().botRatingLoadTime) : 60;
            TLRPC$TL_topPeer tLRPC$TL_topPeer = null;
            int i = 0;
            while (true) {
                if (i >= this.inlineBots.size()) {
                    break;
                }
                TLRPC$TL_topPeer tLRPC$TL_topPeer2 = this.inlineBots.get(i);
                if (tLRPC$TL_topPeer2.peer.user_id == j) {
                    tLRPC$TL_topPeer = tLRPC$TL_topPeer2;
                    break;
                }
                i++;
            }
            if (tLRPC$TL_topPeer == null) {
                tLRPC$TL_topPeer = new TLRPC$TL_topPeer();
                TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
                tLRPC$TL_topPeer.peer = tLRPC$TL_peerUser;
                tLRPC$TL_peerUser.user_id = j;
                this.inlineBots.add(tLRPC$TL_topPeer);
            }
            tLRPC$TL_topPeer.rating += Math.exp(max / getMessagesController().ratingDecay);
            Collections.sort(this.inlineBots, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda163
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$increaseInlineRaiting$141;
                    lambda$increaseInlineRaiting$141 = MediaDataController.lambda$increaseInlineRaiting$141((TLRPC$TL_topPeer) obj, (TLRPC$TL_topPeer) obj2);
                    return lambda$increaseInlineRaiting$141;
                }
            });
            if (this.inlineBots.size() > 20) {
                ArrayList<TLRPC$TL_topPeer> arrayList = this.inlineBots;
                arrayList.remove(arrayList.size() - 1);
            }
            savePeer(j, 1, tLRPC$TL_topPeer.rating);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$increaseInlineRaiting$141(TLRPC$TL_topPeer tLRPC$TL_topPeer, TLRPC$TL_topPeer tLRPC$TL_topPeer2) {
        double d = tLRPC$TL_topPeer.rating;
        double d2 = tLRPC$TL_topPeer2.rating;
        if (d > d2) {
            return -1;
        }
        return d < d2 ? 1 : 0;
    }

    public void removeInline(long j) {
        for (int i = 0; i < this.inlineBots.size(); i++) {
            if (this.inlineBots.get(i).peer.user_id == j) {
                this.inlineBots.remove(i);
                TLRPC$TL_contacts_resetTopPeerRating tLRPC$TL_contacts_resetTopPeerRating = new TLRPC$TL_contacts_resetTopPeerRating();
                tLRPC$TL_contacts_resetTopPeerRating.category = new TLRPC$TL_topPeerCategoryBotsInline();
                tLRPC$TL_contacts_resetTopPeerRating.peer = getMessagesController().getInputPeer(j);
                getConnectionsManager().sendRequest(tLRPC$TL_contacts_resetTopPeerRating, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda225
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        MediaDataController.lambda$removeInline$142(tLObject, tLRPC$TL_error);
                    }
                });
                deletePeer(j, 1);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadInlineHints, new Object[0]);
                return;
            }
        }
    }

    public void removePeer(long j) {
        for (int i = 0; i < this.hints.size(); i++) {
            if (this.hints.get(i).peer.user_id == j) {
                this.hints.remove(i);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
                TLRPC$TL_contacts_resetTopPeerRating tLRPC$TL_contacts_resetTopPeerRating = new TLRPC$TL_contacts_resetTopPeerRating();
                tLRPC$TL_contacts_resetTopPeerRating.category = new TLRPC$TL_topPeerCategoryCorrespondents();
                tLRPC$TL_contacts_resetTopPeerRating.peer = getMessagesController().getInputPeer(j);
                deletePeer(j, 0);
                getConnectionsManager().sendRequest(tLRPC$TL_contacts_resetTopPeerRating, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda226
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        MediaDataController.lambda$removePeer$143(tLObject, tLRPC$TL_error);
                    }
                });
                return;
            }
        }
    }

    public void increasePeerRaiting(final long j) {
        TLRPC$User user;
        if (!getUserConfig().suggestContacts || !DialogObject.isUserDialog(j) || (user = getMessagesController().getUser(Long.valueOf(j))) == null || user.bot || user.self) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$increasePeerRaiting$146(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$increasePeerRaiting$146(final long j) {
        int i;
        double d = 0.0d;
        try {
            int i2 = 0;
            SQLiteCursor queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT MAX(mid), MAX(date) FROM messages_v2 WHERE uid = %d AND out = 1", Long.valueOf(j)), new Object[0]);
            if (queryFinalized.next()) {
                i2 = queryFinalized.intValue(0);
                i = queryFinalized.intValue(1);
            } else {
                i = 0;
            }
            queryFinalized.dispose();
            if (i2 > 0 && getUserConfig().ratingLoadTime != 0) {
                d = i - getUserConfig().ratingLoadTime;
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        final double d2 = d;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$increasePeerRaiting$145(j, d2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$increasePeerRaiting$145(long j, double d) {
        TLRPC$TL_topPeer tLRPC$TL_topPeer;
        int i = 0;
        while (true) {
            if (i >= this.hints.size()) {
                tLRPC$TL_topPeer = null;
                break;
            }
            tLRPC$TL_topPeer = this.hints.get(i);
            if (tLRPC$TL_topPeer.peer.user_id == j) {
                break;
            }
            i++;
        }
        if (tLRPC$TL_topPeer == null) {
            tLRPC$TL_topPeer = new TLRPC$TL_topPeer();
            TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
            tLRPC$TL_topPeer.peer = tLRPC$TL_peerUser;
            tLRPC$TL_peerUser.user_id = j;
            this.hints.add(tLRPC$TL_topPeer);
        }
        tLRPC$TL_topPeer.rating += Math.exp(d / getMessagesController().ratingDecay);
        Collections.sort(this.hints, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda162
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$increasePeerRaiting$144;
                lambda$increasePeerRaiting$144 = MediaDataController.lambda$increasePeerRaiting$144((TLRPC$TL_topPeer) obj, (TLRPC$TL_topPeer) obj2);
                return lambda$increasePeerRaiting$144;
            }
        });
        savePeer(j, 0, tLRPC$TL_topPeer.rating);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.reloadHints, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$increasePeerRaiting$144(TLRPC$TL_topPeer tLRPC$TL_topPeer, TLRPC$TL_topPeer tLRPC$TL_topPeer2) {
        double d = tLRPC$TL_topPeer.rating;
        double d2 = tLRPC$TL_topPeer2.rating;
        if (d > d2) {
            return -1;
        }
        return d < d2 ? 1 : 0;
    }

    private void savePeer(final long j, final int i, final double d) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$savePeer$147(j, i, d);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$savePeer$147(long j, int i, double d) {
        try {
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO chat_hints VALUES(?, ?, ?, ?)");
            executeFast.requery();
            executeFast.bindLong(1, j);
            executeFast.bindInteger(2, i);
            executeFast.bindDouble(3, d);
            executeFast.bindInteger(4, ((int) System.currentTimeMillis()) / 1000);
            executeFast.step();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private void deletePeer(final long j, final int i) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$deletePeer$148(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deletePeer$148(long j, int i) {
        try {
            getMessagesStorage().getDatabase().executeFast(String.format(Locale.US, "DELETE FROM chat_hints WHERE did = %d AND type = %d", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private Intent createIntrnalShortcutIntent(long j) {
        Intent intent = new Intent(ApplicationLoader.applicationContext, OpenChatReceiver.class);
        if (DialogObject.isEncryptedDialog(j)) {
            int encryptedChatId = DialogObject.getEncryptedChatId(j);
            intent.putExtra("encId", encryptedChatId);
            if (getMessagesController().getEncryptedChat(Integer.valueOf(encryptedChatId)) == null) {
                return null;
            }
        } else if (DialogObject.isUserDialog(j)) {
            intent.putExtra("userId", j);
        } else if (!DialogObject.isChatDialog(j)) {
            return null;
        } else {
            intent.putExtra("chatId", -j);
        }
        intent.putExtra("currentAccount", this.currentAccount);
        intent.setAction("com.tmessages.openchat" + j);
        intent.addFlags(ConnectionsManager.FileTypeFile);
        return intent;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:2|3|(2:5|(1:7)(1:9))(2:115|(1:117)(2:118|(2:120|(6:14|(3:16|(1:18)(2:101|(1:103)(4:104|(2:106|107)|108|107))|19)(2:109|(2:111|19)(4:112|(2:114|107)|108|107))|(2:(2:96|97)(1:60)|(11:63|64|65|66|(5:68|(4:70|71|72|(2:74|75))(1:87)|82|(1:84)(1:85)|75)(3:88|(1:90)|91)|76|77|78|79|24|(4:26|(1:28)(1:(2:32|(1:34)(1:35))(2:36|(1:41)(1:40)))|29|30)(4:42|(1:44)(2:47|(2:49|(1:51)(1:52))(2:53|(1:58)(1:57)))|45|46)))(1:22)|23|24|(0)(0))(1:13))(1:121)))|10|(0)|14|(0)(0)|(0)|(0)(0)|(0)|63|64|65|66|(0)(0)|76|77|78|79|24|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a2, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01a4, code lost:
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064 A[Catch: Exception -> 0x0293, TryCatch #4 {Exception -> 0x0293, blocks: (B:3:0x0004, B:5:0x000f, B:8:0x0022, B:21:0x0064, B:23:0x006a, B:82:0x01aa, B:84:0x01b0, B:86:0x01d5, B:98:0x021c, B:88:0x01df, B:90:0x01e3, B:91:0x01ef, B:92:0x01fb, B:94:0x0201, B:96:0x0205, B:97:0x0211, B:99:0x0227, B:101:0x0230, B:115:0x0277, B:105:0x023a, B:107:0x023e, B:108:0x024a, B:109:0x0256, B:111:0x025c, B:113:0x0260, B:114:0x026c, B:81:0x01a7, B:25:0x0075, B:27:0x007b, B:28:0x0084, B:30:0x0090, B:31:0x0093, B:33:0x009f, B:34:0x00a6, B:36:0x00aa, B:9:0x0031, B:11:0x0037, B:13:0x0046, B:15:0x004c), top: B:129:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0093 A[Catch: Exception -> 0x0293, TryCatch #4 {Exception -> 0x0293, blocks: (B:3:0x0004, B:5:0x000f, B:8:0x0022, B:21:0x0064, B:23:0x006a, B:82:0x01aa, B:84:0x01b0, B:86:0x01d5, B:98:0x021c, B:88:0x01df, B:90:0x01e3, B:91:0x01ef, B:92:0x01fb, B:94:0x0201, B:96:0x0205, B:97:0x0211, B:99:0x0227, B:101:0x0230, B:115:0x0277, B:105:0x023a, B:107:0x023e, B:108:0x024a, B:109:0x0256, B:111:0x025c, B:113:0x0260, B:114:0x026c, B:81:0x01a7, B:25:0x0075, B:27:0x007b, B:28:0x0084, B:30:0x0090, B:31:0x0093, B:33:0x009f, B:34:0x00a6, B:36:0x00aa, B:9:0x0031, B:11:0x0037, B:13:0x0046, B:15:0x004c), top: B:129:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ed A[Catch: all -> 0x01a4, TryCatch #2 {all -> 0x01a4, blocks: (B:55:0x00d9, B:57:0x00ed, B:59:0x00f4), top: B:125:0x00d9 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0124 A[Catch: all -> 0x01a2, TryCatch #1 {all -> 0x01a2, blocks: (B:61:0x00f8, B:63:0x0100, B:69:0x011c, B:74:0x0175, B:75:0x019d, B:65:0x010d, B:67:0x0113, B:68:0x0119, B:70:0x0124, B:72:0x0131, B:73:0x013f), top: B:124:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b0 A[Catch: Exception -> 0x0293, TryCatch #4 {Exception -> 0x0293, blocks: (B:3:0x0004, B:5:0x000f, B:8:0x0022, B:21:0x0064, B:23:0x006a, B:82:0x01aa, B:84:0x01b0, B:86:0x01d5, B:98:0x021c, B:88:0x01df, B:90:0x01e3, B:91:0x01ef, B:92:0x01fb, B:94:0x0201, B:96:0x0205, B:97:0x0211, B:99:0x0227, B:101:0x0230, B:115:0x0277, B:105:0x023a, B:107:0x023e, B:108:0x024a, B:109:0x0256, B:111:0x025c, B:113:0x0260, B:114:0x026c, B:81:0x01a7, B:25:0x0075, B:27:0x007b, B:28:0x0084, B:30:0x0090, B:31:0x0093, B:33:0x009f, B:34:0x00a6, B:36:0x00aa, B:9:0x0031, B:11:0x0037, B:13:0x0046, B:15:0x004c), top: B:129:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0227 A[Catch: Exception -> 0x0293, TryCatch #4 {Exception -> 0x0293, blocks: (B:3:0x0004, B:5:0x000f, B:8:0x0022, B:21:0x0064, B:23:0x006a, B:82:0x01aa, B:84:0x01b0, B:86:0x01d5, B:98:0x021c, B:88:0x01df, B:90:0x01e3, B:91:0x01ef, B:92:0x01fb, B:94:0x0201, B:96:0x0205, B:97:0x0211, B:99:0x0227, B:101:0x0230, B:115:0x0277, B:105:0x023a, B:107:0x023e, B:108:0x024a, B:109:0x0256, B:111:0x025c, B:113:0x0260, B:114:0x026c, B:81:0x01a7, B:25:0x0075, B:27:0x007b, B:28:0x0084, B:30:0x0090, B:31:0x0093, B:33:0x009f, B:34:0x00a6, B:36:0x00aa, B:9:0x0031, B:11:0x0037, B:13:0x0046, B:15:0x004c), top: B:129:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void installShortcut(long r18) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.installShortcut(long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a6 A[Catch: Exception -> 0x00d6, TryCatch #0 {Exception -> 0x00d6, blocks: (B:2:0x0000, B:4:0x0006, B:6:0x003e, B:7:0x004d, B:9:0x0054, B:12:0x0067, B:24:0x00a6, B:26:0x00b1, B:25:0x00af, B:13:0x0076, B:15:0x007c, B:17:0x008c, B:19:0x0092), top: B:32:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00af A[Catch: Exception -> 0x00d6, TryCatch #0 {Exception -> 0x00d6, blocks: (B:2:0x0000, B:4:0x0006, B:6:0x003e, B:7:0x004d, B:9:0x0054, B:12:0x0067, B:24:0x00a6, B:26:0x00b1, B:25:0x00af, B:13:0x0076, B:15:0x007c, B:17:0x008c, B:19:0x0092), top: B:32:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void uninstallShortcut(long r7) {
        /*
            r6 = this;
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> Ld6
            r1 = 26
            if (r0 < r1) goto L4d
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> Ld6
            r1.<init>()     // Catch: java.lang.Exception -> Ld6
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Ld6
            r2.<init>()     // Catch: java.lang.Exception -> Ld6
            java.lang.String r3 = "sdid_"
            r2.append(r3)     // Catch: java.lang.Exception -> Ld6
            r2.append(r7)     // Catch: java.lang.Exception -> Ld6
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> Ld6
            r1.add(r2)     // Catch: java.lang.Exception -> Ld6
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Ld6
            r2.<init>()     // Catch: java.lang.Exception -> Ld6
            java.lang.String r3 = "ndid_"
            r2.append(r3)     // Catch: java.lang.Exception -> Ld6
            r2.append(r7)     // Catch: java.lang.Exception -> Ld6
            java.lang.String r7 = r2.toString()     // Catch: java.lang.Exception -> Ld6
            r1.add(r7)     // Catch: java.lang.Exception -> Ld6
            android.content.Context r7 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Exception -> Ld6
            androidx.core.content.p009pm.ShortcutManagerCompat.removeDynamicShortcuts(r7, r1)     // Catch: java.lang.Exception -> Ld6
            r7 = 30
            if (r0 < r7) goto Lda
            android.content.Context r7 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Exception -> Ld6
            java.lang.Class<android.content.pm.ShortcutManager> r8 = android.content.pm.ShortcutManager.class
            java.lang.Object r7 = r7.getSystemService(r8)     // Catch: java.lang.Exception -> Ld6
            android.content.pm.ShortcutManager r7 = (android.content.pm.ShortcutManager) r7     // Catch: java.lang.Exception -> Ld6
            r7.removeLongLivedShortcuts(r1)     // Catch: java.lang.Exception -> Ld6
            goto Lda
        L4d:
            boolean r0 = org.telegram.messenger.DialogObject.isEncryptedDialog(r7)     // Catch: java.lang.Exception -> Ld6
            r1 = 0
            if (r0 == 0) goto L76
            int r0 = org.telegram.messenger.DialogObject.getEncryptedChatId(r7)     // Catch: java.lang.Exception -> Ld6
            org.telegram.messenger.MessagesController r2 = r6.getMessagesController()     // Catch: java.lang.Exception -> Ld6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Exception -> Ld6
            org.telegram.tgnet.TLRPC$EncryptedChat r0 = r2.getEncryptedChat(r0)     // Catch: java.lang.Exception -> Ld6
            if (r0 != 0) goto L67
            return
        L67:
            org.telegram.messenger.MessagesController r2 = r6.getMessagesController()     // Catch: java.lang.Exception -> Ld6
            long r3 = r0.user_id     // Catch: java.lang.Exception -> Ld6
            java.lang.Long r0 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Exception -> Ld6
            org.telegram.tgnet.TLRPC$User r0 = r2.getUser(r0)     // Catch: java.lang.Exception -> Ld6
            goto L88
        L76:
            boolean r0 = org.telegram.messenger.DialogObject.isUserDialog(r7)     // Catch: java.lang.Exception -> Ld6
            if (r0 == 0) goto L8c
            org.telegram.messenger.MessagesController r0 = r6.getMessagesController()     // Catch: java.lang.Exception -> Ld6
            java.lang.Long r2 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Exception -> Ld6
            org.telegram.tgnet.TLRPC$User r0 = r0.getUser(r2)     // Catch: java.lang.Exception -> Ld6
        L88:
            r5 = r1
            r1 = r0
            r0 = r5
            goto L9f
        L8c:
            boolean r0 = org.telegram.messenger.DialogObject.isChatDialog(r7)     // Catch: java.lang.Exception -> Ld6
            if (r0 == 0) goto Ld5
            org.telegram.messenger.MessagesController r0 = r6.getMessagesController()     // Catch: java.lang.Exception -> Ld6
            long r2 = -r7
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Exception -> Ld6
            org.telegram.tgnet.TLRPC$Chat r0 = r0.getChat(r2)     // Catch: java.lang.Exception -> Ld6
        L9f:
            if (r1 != 0) goto La4
            if (r0 != 0) goto La4
            return
        La4:
            if (r1 == 0) goto Laf
            java.lang.String r0 = r1.first_name     // Catch: java.lang.Exception -> Ld6
            java.lang.String r1 = r1.last_name     // Catch: java.lang.Exception -> Ld6
            java.lang.String r0 = org.telegram.messenger.ContactsController.formatName(r0, r1)     // Catch: java.lang.Exception -> Ld6
            goto Lb1
        Laf:
            java.lang.String r0 = r0.title     // Catch: java.lang.Exception -> Ld6
        Lb1:
            android.content.Intent r1 = new android.content.Intent     // Catch: java.lang.Exception -> Ld6
            r1.<init>()     // Catch: java.lang.Exception -> Ld6
            java.lang.String r2 = "android.intent.extra.shortcut.INTENT"
            android.content.Intent r7 = r6.createIntrnalShortcutIntent(r7)     // Catch: java.lang.Exception -> Ld6
            r1.putExtra(r2, r7)     // Catch: java.lang.Exception -> Ld6
            java.lang.String r7 = "android.intent.extra.shortcut.NAME"
            r1.putExtra(r7, r0)     // Catch: java.lang.Exception -> Ld6
            java.lang.String r7 = "duplicate"
            r8 = 0
            r1.putExtra(r7, r8)     // Catch: java.lang.Exception -> Ld6
            java.lang.String r7 = "com.android.launcher.action.UNINSTALL_SHORTCUT"
            r1.setAction(r7)     // Catch: java.lang.Exception -> Ld6
            android.content.Context r7 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Exception -> Ld6
            r7.sendBroadcast(r1)     // Catch: java.lang.Exception -> Ld6
            goto Lda
        Ld5:
            return
        Ld6:
            r7 = move-exception
            org.telegram.messenger.FileLog.m99e(r7)
        Lda:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.uninstallShortcut(long):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$149(TLRPC$MessageEntity tLRPC$MessageEntity, TLRPC$MessageEntity tLRPC$MessageEntity2) {
        int i = tLRPC$MessageEntity.offset;
        int i2 = tLRPC$MessageEntity2.offset;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    public void loadPinnedMessages(final long j, final int i, final int i2) {
        if (this.loadingPinnedMessages.indexOfKey(j) >= 0) {
            return;
        }
        this.loadingPinnedMessages.put(j, Boolean.TRUE);
        final TLRPC$TL_messages_search tLRPC$TL_messages_search = new TLRPC$TL_messages_search();
        tLRPC$TL_messages_search.peer = getMessagesController().getInputPeer(j);
        tLRPC$TL_messages_search.limit = 40;
        tLRPC$TL_messages_search.offset_id = i;
        tLRPC$TL_messages_search.f1711q = "";
        tLRPC$TL_messages_search.filter = new TLRPC$TL_inputMessagesFilterPinned();
        getConnectionsManager().sendRequest(tLRPC$TL_messages_search, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda191
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadPinnedMessages$151(i2, tLRPC$TL_messages_search, j, i, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPinnedMessages$151(int i, TLRPC$TL_messages_search tLRPC$TL_messages_search, final long j, int i2, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        int i3;
        int i4;
        boolean z;
        ArrayList<Integer> arrayList = new ArrayList<>();
        HashMap<Integer, MessageObject> hashMap = new HashMap<>();
        if (tLObject instanceof TLRPC$messages_Messages) {
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            LongSparseArray longSparseArray = new LongSparseArray();
            for (int i5 = 0; i5 < tLRPC$messages_Messages.users.size(); i5++) {
                TLRPC$User tLRPC$User = tLRPC$messages_Messages.users.get(i5);
                longSparseArray.put(tLRPC$User.f1749id, tLRPC$User);
            }
            LongSparseArray longSparseArray2 = new LongSparseArray();
            for (int i6 = 0; i6 < tLRPC$messages_Messages.chats.size(); i6++) {
                TLRPC$Chat tLRPC$Chat = tLRPC$messages_Messages.chats.get(i6);
                longSparseArray2.put(tLRPC$Chat.f1602id, tLRPC$Chat);
            }
            getMessagesStorage().putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
            getMessagesController().putUsers(tLRPC$messages_Messages.users, false);
            getMessagesController().putChats(tLRPC$messages_Messages.chats, false);
            int size = tLRPC$messages_Messages.messages.size();
            for (int i7 = 0; i7 < size; i7++) {
                TLRPC$Message tLRPC$Message = tLRPC$messages_Messages.messages.get(i7);
                if (!(tLRPC$Message instanceof TLRPC$TL_messageService) && !(tLRPC$Message instanceof TLRPC$TL_messageEmpty)) {
                    arrayList.add(Integer.valueOf(tLRPC$Message.f1626id));
                    hashMap.put(Integer.valueOf(tLRPC$Message.f1626id), new MessageObject(this.currentAccount, tLRPC$Message, (LongSparseArray<TLRPC$User>) longSparseArray, (LongSparseArray<TLRPC$Chat>) longSparseArray2, false, false));
                }
            }
            if (i != 0 && arrayList.isEmpty()) {
                arrayList.add(Integer.valueOf(i));
            }
            boolean z2 = tLRPC$messages_Messages.messages.size() < tLRPC$TL_messages_search.limit;
            i4 = Math.max(tLRPC$messages_Messages.count, tLRPC$messages_Messages.messages.size());
            z = z2;
        } else {
            if (i != 0) {
                arrayList.add(Integer.valueOf(i));
                i3 = 1;
            } else {
                i3 = 0;
            }
            i4 = i3;
            z = false;
        }
        getMessagesStorage().updatePinnedMessages(j, arrayList, true, i4, i2, z, hashMap);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadPinnedMessages$150(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPinnedMessages$150(long j) {
        this.loadingPinnedMessages.remove(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPinnedMessages$152(long j, long j2, ArrayList arrayList, boolean z) {
        loadPinnedMessageInternal(j, j2, arrayList, false, z, false);
    }

    public ArrayList<MessageObject> loadPinnedMessages(final long j, final long j2, final ArrayList<Integer> arrayList, boolean z, final boolean z2, boolean z3) {
        if (z && !z3) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadPinnedMessages$152(j, j2, arrayList, z2);
                }
            });
            return null;
        }
        return loadPinnedMessageInternal(j, j2, arrayList, true, z2, z3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.StringBuilder] */
    private ArrayList<MessageObject> loadPinnedMessageInternal(final long j, final long j2, ArrayList<Integer> arrayList, boolean z, final boolean z2, final boolean z3) {
        ?? join;
        CharSequence charSequence;
        ArrayList<TLRPC$Chat> arrayList2;
        final ArrayList<TLRPC$Message> arrayList3;
        CharSequence charSequence2;
        final ArrayList arrayList4;
        final ArrayList arrayList5;
        ArrayList<TLRPC$User> arrayList6;
        CharSequence charSequence3;
        ArrayList<TLRPC$User> arrayList7;
        ArrayList<TLRPC$Chat> arrayList8;
        try {
            ArrayList<Integer> arrayList9 = new ArrayList<>(arrayList);
            int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i != 0) {
                join = new StringBuilder();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Integer num = arrayList.get(i2);
                    if (join.length() != 0) {
                        join.append(",");
                    }
                    join.append(num);
                }
            } else {
                join = TextUtils.join(",", arrayList);
            }
            final ArrayList<TLRPC$Message> arrayList10 = new ArrayList<>();
            ArrayList<TLRPC$User> arrayList11 = new ArrayList<>();
            ArrayList<TLRPC$Chat> arrayList12 = new ArrayList<>();
            final ArrayList arrayList13 = new ArrayList();
            final ArrayList arrayList14 = new ArrayList();
            long j3 = getUserConfig().clientUserId;
            ?? r4 = 0;
            SQLiteCursor queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid, date FROM messages_v2 WHERE mid IN (%s) AND uid = %d", new Object[]{join, Long.valueOf(j)}), new Object[0]);
            while (queryFinalized.next()) {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(r4);
                if (byteBufferValue != null) {
                    TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(r4), r4);
                    if (!(TLdeserialize.action instanceof TLRPC$TL_messageActionHistoryClear)) {
                        TLdeserialize.readAttachPath(byteBufferValue, j3);
                        TLdeserialize.f1626id = queryFinalized.intValue(1);
                        TLdeserialize.date = queryFinalized.intValue(2);
                        TLdeserialize.dialog_id = j;
                        MessagesStorage.addUsersAndChatsFromMessage(TLdeserialize, arrayList13, arrayList14, null);
                        arrayList10.add(TLdeserialize);
                        arrayList9.remove(Integer.valueOf(TLdeserialize.f1626id));
                    }
                    byteBufferValue.reuse();
                }
                r4 = 0;
            }
            queryFinalized.dispose();
            if (arrayList9.isEmpty()) {
                charSequence = ",";
            } else {
                charSequence = ",";
                SQLiteCursor queryFinalized2 = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data FROM chat_pinned_v2 WHERE uid = %d AND mid IN (%s)", Long.valueOf(j), TextUtils.join(charSequence, arrayList9)), new Object[0]);
                while (queryFinalized2.next()) {
                    NativeByteBuffer byteBufferValue2 = queryFinalized2.byteBufferValue(0);
                    if (byteBufferValue2 != null) {
                        TLRPC$Message TLdeserialize2 = TLRPC$Message.TLdeserialize(byteBufferValue2, byteBufferValue2.readInt32(false), false);
                        if (!(TLdeserialize2.action instanceof TLRPC$TL_messageActionHistoryClear)) {
                            TLdeserialize2.readAttachPath(byteBufferValue2, j3);
                            TLdeserialize2.dialog_id = j;
                            MessagesStorage.addUsersAndChatsFromMessage(TLdeserialize2, arrayList13, arrayList14, null);
                            arrayList10.add(TLdeserialize2);
                            arrayList9.remove(Integer.valueOf(TLdeserialize2.f1626id));
                        }
                        byteBufferValue2.reuse();
                    }
                }
                queryFinalized2.dispose();
            }
            if (arrayList9.isEmpty()) {
                arrayList2 = arrayList12;
                arrayList3 = arrayList10;
                charSequence2 = charSequence;
                arrayList4 = arrayList14;
                arrayList5 = arrayList13;
                arrayList6 = arrayList11;
            } else {
                CountDownLatch countDownLatch = z3 ? new CountDownLatch(1) : null;
                if (i != 0) {
                    final TLRPC$TL_channels_getMessages tLRPC$TL_channels_getMessages = new TLRPC$TL_channels_getMessages();
                    tLRPC$TL_channels_getMessages.channel = getMessagesController().getInputChannel(j2);
                    tLRPC$TL_channels_getMessages.f1645id = arrayList9;
                    charSequence2 = charSequence;
                    arrayList4 = arrayList14;
                    arrayList5 = arrayList13;
                    arrayList2 = arrayList12;
                    arrayList3 = arrayList10;
                    arrayList6 = arrayList11;
                    final CountDownLatch countDownLatch2 = countDownLatch;
                    getConnectionsManager().sendRequest(tLRPC$TL_channels_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda200
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            MediaDataController.this.lambda$loadPinnedMessageInternal$153(j2, z3, arrayList13, arrayList14, arrayList10, z2, j, tLRPC$TL_channels_getMessages, countDownLatch2, tLObject, tLRPC$TL_error);
                        }
                    });
                } else {
                    arrayList2 = arrayList12;
                    arrayList3 = arrayList10;
                    charSequence2 = charSequence;
                    arrayList4 = arrayList14;
                    arrayList5 = arrayList13;
                    arrayList6 = arrayList11;
                    final TLRPC$TL_messages_getMessages tLRPC$TL_messages_getMessages = new TLRPC$TL_messages_getMessages();
                    tLRPC$TL_messages_getMessages.f1698id = arrayList9;
                    final CountDownLatch countDownLatch3 = countDownLatch;
                    getConnectionsManager().sendRequest(tLRPC$TL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda220
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            MediaDataController.this.lambda$loadPinnedMessageInternal$154(z3, arrayList5, arrayList4, arrayList3, z2, j, tLRPC$TL_messages_getMessages, countDownLatch3, tLObject, tLRPC$TL_error);
                        }
                    });
                }
                if (z3) {
                    countDownLatch.await();
                }
            }
            if (arrayList3.isEmpty()) {
                return null;
            }
            if (arrayList5.isEmpty()) {
                charSequence3 = charSequence2;
                arrayList7 = arrayList6;
            } else {
                charSequence3 = charSequence2;
                arrayList7 = arrayList6;
                getMessagesStorage().getUsersInternal(TextUtils.join(charSequence3, arrayList5), arrayList7);
            }
            if (arrayList4.isEmpty()) {
                arrayList8 = arrayList2;
            } else {
                MessagesStorage messagesStorage = getMessagesStorage();
                String join2 = TextUtils.join(charSequence3, arrayList4);
                arrayList8 = arrayList2;
                messagesStorage.getChatsInternal(join2, arrayList8);
            }
            if (z) {
                return broadcastPinnedMessage(arrayList3, arrayList7, arrayList8, true, true);
            }
            broadcastPinnedMessage(arrayList3, arrayList7, arrayList8, true, false);
            return null;
        } catch (Exception e) {
            FileLog.m99e(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadPinnedMessageInternal$153(long r13, boolean r15, java.util.ArrayList r16, java.util.ArrayList r17, java.util.ArrayList r18, boolean r19, long r20, org.telegram.tgnet.TLRPC$TL_channels_getMessages r22, java.util.concurrent.CountDownLatch r23, org.telegram.tgnet.TLObject r24, org.telegram.tgnet.TLRPC$TL_error r25) {
        /*
            r12 = this;
            r0 = 1
            if (r25 != 0) goto L6f
            r1 = r24
            org.telegram.tgnet.TLRPC$messages_Messages r1 = (org.telegram.tgnet.TLRPC$messages_Messages) r1
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            removeEmptyMessages(r2)
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto L6f
            org.telegram.messenger.MessagesController r2 = r12.getMessagesController()
            java.lang.Long r3 = java.lang.Long.valueOf(r13)
            r2.getChat(r3)
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            org.telegram.messenger.ImageLoader.saveMessagesThumbs(r2)
            if (r15 == 0) goto L49
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            java.util.Iterator r2 = r2.iterator()
        L2c:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L41
            java.lang.Object r3 = r2.next()
            org.telegram.tgnet.TLRPC$Message r3 = (org.telegram.tgnet.TLRPC$Message) r3
            r4 = 0
            r5 = r16
            r6 = r17
            org.telegram.messenger.MessagesStorage.addUsersAndChatsFromMessage(r3, r5, r6, r4)
            goto L2c
        L41:
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            r3 = r18
            r3.addAll(r2)
            goto L55
        L49:
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r4 = r1.messages
            java.util.ArrayList<org.telegram.tgnet.TLRPC$User> r5 = r1.users
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Chat> r6 = r1.chats
            r7 = 0
            r8 = 0
            r3 = r12
            r3.broadcastPinnedMessage(r4, r5, r6, r7, r8)
        L55:
            org.telegram.messenger.MessagesStorage r2 = r12.getMessagesStorage()
            java.util.ArrayList<org.telegram.tgnet.TLRPC$User> r3 = r1.users
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Chat> r4 = r1.chats
            r2.putUsersAndChats(r3, r4, r0, r0)
            if (r19 != 0) goto L6b
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r1 = r1.messages
            r2 = r12
            r4 = r20
            r12.savePinnedMessages(r4, r1)
            goto L73
        L6b:
            r2 = r12
            r4 = r20
            goto L73
        L6f:
            r2 = r12
            r4 = r20
            r0 = 0
        L73:
            if (r0 != 0) goto L89
            if (r19 != 0) goto L89
            org.telegram.messenger.MessagesStorage r3 = r12.getMessagesStorage()
            r0 = r22
            java.util.ArrayList<java.lang.Integer> r6 = r0.f1645id
            r7 = 0
            r8 = -1
            r9 = 0
            r10 = 0
            r11 = 0
            r4 = r20
            r3.updatePinnedMessages(r4, r6, r7, r8, r9, r10, r11)
        L89:
            if (r15 == 0) goto L8e
            r23.countDown()
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$loadPinnedMessageInternal$153(long, boolean, java.util.ArrayList, java.util.ArrayList, java.util.ArrayList, boolean, long, org.telegram.tgnet.TLRPC$TL_channels_getMessages, java.util.concurrent.CountDownLatch, org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$TL_error):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadPinnedMessageInternal$154(boolean r13, java.util.ArrayList r14, java.util.ArrayList r15, java.util.ArrayList r16, boolean r17, long r18, org.telegram.tgnet.TLRPC$TL_messages_getMessages r20, java.util.concurrent.CountDownLatch r21, org.telegram.tgnet.TLObject r22, org.telegram.tgnet.TLRPC$TL_error r23) {
        /*
            r12 = this;
            r0 = 1
            if (r23 != 0) goto L62
            r1 = r22
            org.telegram.tgnet.TLRPC$messages_Messages r1 = (org.telegram.tgnet.TLRPC$messages_Messages) r1
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            removeEmptyMessages(r2)
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto L62
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            org.telegram.messenger.ImageLoader.saveMessagesThumbs(r2)
            if (r13 == 0) goto L3c
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            java.util.Iterator r2 = r2.iterator()
        L21:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L34
            java.lang.Object r3 = r2.next()
            org.telegram.tgnet.TLRPC$Message r3 = (org.telegram.tgnet.TLRPC$Message) r3
            r4 = 0
            r5 = r14
            r6 = r15
            org.telegram.messenger.MessagesStorage.addUsersAndChatsFromMessage(r3, r14, r15, r4)
            goto L21
        L34:
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r2 = r1.messages
            r3 = r16
            r3.addAll(r2)
            goto L48
        L3c:
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r4 = r1.messages
            java.util.ArrayList<org.telegram.tgnet.TLRPC$User> r5 = r1.users
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Chat> r6 = r1.chats
            r7 = 0
            r8 = 0
            r3 = r12
            r3.broadcastPinnedMessage(r4, r5, r6, r7, r8)
        L48:
            org.telegram.messenger.MessagesStorage r2 = r12.getMessagesStorage()
            java.util.ArrayList<org.telegram.tgnet.TLRPC$User> r3 = r1.users
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Chat> r4 = r1.chats
            r2.putUsersAndChats(r3, r4, r0, r0)
            if (r17 != 0) goto L5e
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r1 = r1.messages
            r2 = r12
            r4 = r18
            r12.savePinnedMessages(r4, r1)
            goto L66
        L5e:
            r2 = r12
            r4 = r18
            goto L66
        L62:
            r2 = r12
            r4 = r18
            r0 = 0
        L66:
            if (r0 != 0) goto L7c
            if (r17 != 0) goto L7c
            org.telegram.messenger.MessagesStorage r3 = r12.getMessagesStorage()
            r0 = r20
            java.util.ArrayList<java.lang.Integer> r6 = r0.f1698id
            r7 = 0
            r8 = -1
            r9 = 0
            r10 = 0
            r11 = 0
            r4 = r18
            r3.updatePinnedMessages(r4, r6, r7, r8, r9, r10, r11)
        L7c:
            if (r13 == 0) goto L81
            r21.countDown()
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$loadPinnedMessageInternal$154(boolean, java.util.ArrayList, java.util.ArrayList, java.util.ArrayList, boolean, long, org.telegram.tgnet.TLRPC$TL_messages_getMessages, java.util.concurrent.CountDownLatch, org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$TL_error):void");
    }

    private void savePinnedMessages(final long j, final ArrayList<TLRPC$Message> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$savePinnedMessages$155(arrayList, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$savePinnedMessages$155(ArrayList arrayList, long j) {
        try {
            getMessagesStorage().getDatabase().beginTransaction();
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO chat_pinned_v2 VALUES(?, ?, ?)");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC$Message tLRPC$Message = (TLRPC$Message) arrayList.get(i);
                MessageObject.normalizeFlags(tLRPC$Message);
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$Message.getObjectSize());
                tLRPC$Message.serializeToStream(nativeByteBuffer);
                executeFast.requery();
                executeFast.bindLong(1, j);
                executeFast.bindInteger(2, tLRPC$Message.f1626id);
                executeFast.bindByteBuffer(3, nativeByteBuffer);
                executeFast.step();
                nativeByteBuffer.reuse();
            }
            executeFast.dispose();
            getMessagesStorage().getDatabase().commitTransaction();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private ArrayList<MessageObject> broadcastPinnedMessage(final ArrayList<TLRPC$Message> arrayList, final ArrayList<TLRPC$User> arrayList2, final ArrayList<TLRPC$Chat> arrayList3, final boolean z, boolean z2) {
        if (arrayList.isEmpty()) {
            return null;
        }
        final LongSparseArray longSparseArray = new LongSparseArray();
        for (int i = 0; i < arrayList2.size(); i++) {
            TLRPC$User tLRPC$User = arrayList2.get(i);
            longSparseArray.put(tLRPC$User.f1749id, tLRPC$User);
        }
        final LongSparseArray longSparseArray2 = new LongSparseArray();
        for (int i2 = 0; i2 < arrayList3.size(); i2++) {
            TLRPC$Chat tLRPC$Chat = arrayList3.get(i2);
            longSparseArray2.put(tLRPC$Chat.f1602id, tLRPC$Chat);
        }
        final ArrayList<MessageObject> arrayList4 = new ArrayList<>();
        if (z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda80
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$broadcastPinnedMessage$156(arrayList2, z, arrayList3);
                }
            });
            int size = arrayList.size();
            int i3 = 0;
            int i4 = 0;
            while (i4 < size) {
                TLRPC$Message tLRPC$Message = arrayList.get(i4);
                if ((MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaDocument) || (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto)) {
                    i3++;
                }
                int i5 = i3;
                arrayList4.add(new MessageObject(this.currentAccount, tLRPC$Message, (LongSparseArray<TLRPC$User>) longSparseArray, (LongSparseArray<TLRPC$Chat>) longSparseArray2, false, i5 < 30));
                i4++;
                i3 = i5;
            }
            return arrayList4;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda82
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$broadcastPinnedMessage$158(arrayList2, z, arrayList3, arrayList, arrayList4, longSparseArray, longSparseArray2);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastPinnedMessage$156(ArrayList arrayList, boolean z, ArrayList arrayList2) {
        getMessagesController().putUsers(arrayList, z);
        getMessagesController().putChats(arrayList2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastPinnedMessage$158(ArrayList arrayList, boolean z, ArrayList arrayList2, ArrayList arrayList3, final ArrayList arrayList4, LongSparseArray longSparseArray, LongSparseArray longSparseArray2) {
        getMessagesController().putUsers(arrayList, z);
        getMessagesController().putChats(arrayList2, z);
        int size = arrayList3.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            TLRPC$Message tLRPC$Message = (TLRPC$Message) arrayList3.get(i2);
            if ((MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaDocument) || (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto)) {
                i++;
            }
            arrayList4.add(new MessageObject(this.currentAccount, tLRPC$Message, (LongSparseArray<TLRPC$User>) longSparseArray, (LongSparseArray<TLRPC$Chat>) longSparseArray2, false, i < 30));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$broadcastPinnedMessage$157(arrayList4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastPinnedMessage$157(ArrayList arrayList) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didLoadPinnedMessages, Long.valueOf(((MessageObject) arrayList.get(0)).getDialogId()), null, Boolean.TRUE, arrayList, 0, 0, -1, Boolean.FALSE);
    }

    private static void removeEmptyMessages(ArrayList<TLRPC$Message> arrayList) {
        int i = 0;
        while (i < arrayList.size()) {
            TLRPC$Message tLRPC$Message = arrayList.get(i);
            if (tLRPC$Message == null || (tLRPC$Message instanceof TLRPC$TL_messageEmpty) || (tLRPC$Message.action instanceof TLRPC$TL_messageActionHistoryClear)) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0115, code lost:
        if (r2 != 0) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0120, code lost:
        if (r2 != 0) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0122, code lost:
        r14 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0123, code lost:
        r2 = r4.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0125, code lost:
        if (r2 == null) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0127, code lost:
        r2 = r2.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0129, code lost:
        if (r2 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x012b, code lost:
        r2 = r2.peer_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x012d, code lost:
        if (r2 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0131, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageEmpty) == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0138, code lost:
        if (r2.channel_id != r14) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x013e, code lost:
        r2 = (android.util.SparseArray) r6.get(r19);
        r3 = (java.util.ArrayList) r7.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x014a, code lost:
        if (r2 != null) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x014c, code lost:
        r2 = new android.util.SparseArray();
        r6.put(r19, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0154, code lost:
        if (r3 != null) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0156, code lost:
        r3 = new java.util.ArrayList();
        r7.put(r14, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x015e, code lost:
        r5 = (java.util.ArrayList) r2.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0164, code lost:
        if (r5 != null) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0166, code lost:
        r5 = new java.util.ArrayList();
        r2.put(r12, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0176, code lost:
        if (r3.contains(java.lang.Integer.valueOf(r12)) != false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0178, code lost:
        r3.add(java.lang.Integer.valueOf(r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x017f, code lost:
        r5.add(r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x023e A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadReplyMessagesForMessages(java.util.ArrayList<org.telegram.messenger.MessageObject> r18, final long r19, final boolean r21, int r22, final java.lang.Runnable r23, final int r24) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.loadReplyMessagesForMessages(java.util.ArrayList, long, boolean, int, java.lang.Runnable, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$160(ArrayList arrayList, final long j, LongSparseArray longSparseArray, Runnable runnable) {
        try {
            final ArrayList arrayList2 = new ArrayList();
            SQLiteCursor queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT m.data, m.mid, m.date, r.random_id FROM randoms_v2 as r INNER JOIN messages_v2 as m ON r.mid = m.mid AND r.uid = m.uid WHERE r.random_id IN(%s)", TextUtils.join(",", arrayList)), new Object[0]);
            while (queryFinalized.next()) {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                if (byteBufferValue != null) {
                    TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    TLdeserialize.readAttachPath(byteBufferValue, getUserConfig().clientUserId);
                    byteBufferValue.reuse();
                    TLdeserialize.f1626id = queryFinalized.intValue(1);
                    TLdeserialize.date = queryFinalized.intValue(2);
                    TLdeserialize.dialog_id = j;
                    long longValue = queryFinalized.longValue(3);
                    ArrayList arrayList3 = (ArrayList) longSparseArray.get(longValue);
                    longSparseArray.remove(longValue);
                    if (arrayList3 != null) {
                        MessageObject messageObject = new MessageObject(this.currentAccount, TLdeserialize, false, false);
                        arrayList2.add(messageObject);
                        for (int i = 0; i < arrayList3.size(); i++) {
                            MessageObject messageObject2 = (MessageObject) arrayList3.get(i);
                            messageObject2.replyMessageObject = messageObject;
                            messageObject2.applyTimestampsHighlightForReplyMsg();
                            messageObject2.messageOwner.reply_to = new TLRPC$TL_messageReplyHeader();
                            TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader = messageObject2.messageOwner.reply_to;
                            tLRPC$MessageReplyHeader.flags |= 16;
                            tLRPC$MessageReplyHeader.reply_to_msg_id = messageObject.getId();
                        }
                    }
                }
            }
            queryFinalized.dispose();
            if (longSparseArray.size() != 0) {
                for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                    ArrayList arrayList4 = (ArrayList) longSparseArray.valueAt(i2);
                    for (int i3 = 0; i3 < arrayList4.size(); i3++) {
                        TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader2 = ((MessageObject) arrayList4.get(i3)).messageOwner.reply_to;
                        if (tLRPC$MessageReplyHeader2 != null) {
                            tLRPC$MessageReplyHeader2.reply_to_random_id = 0L;
                        }
                    }
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadReplyMessagesForMessages$159(j, arrayList2);
                }
            });
            if (runnable != null) {
                runnable.run();
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$159(long j, ArrayList arrayList) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replyMessagesDidLoad, Long.valueOf(j), arrayList, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v9 */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$166(LongSparseArray longSparseArray, final AtomicInteger atomicInteger, final Runnable runnable, int i, final LongSparseArray longSparseArray2, LongSparseArray longSparseArray3, final boolean z, final long j) {
        int i2;
        int i3;
        ?? r15;
        SQLiteCursor queryFinalized;
        LongSparseArray longSparseArray4 = longSparseArray2;
        try {
            getMessagesController().getStoriesController().fillMessagesWithStories(longSparseArray, new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.lambda$loadReplyMessagesForMessages$161(atomicInteger, runnable);
                }
            }, i);
            if (longSparseArray2.isEmpty()) {
                if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
                    return;
                }
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
            ArrayList<TLRPC$Message> arrayList = new ArrayList<>();
            ArrayList<TLRPC$User> arrayList2 = new ArrayList<>();
            ArrayList<TLRPC$Chat> arrayList3 = new ArrayList<>();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            int size = longSparseArray2.size();
            int i4 = 0;
            while (i4 < size) {
                long keyAt = longSparseArray4.keyAt(i4);
                SparseArray sparseArray = (SparseArray) longSparseArray4.valueAt(i4);
                ArrayList arrayList6 = (ArrayList) longSparseArray3.get(keyAt);
                if (arrayList6 != null) {
                    int i5 = 0;
                    while (i5 < 2) {
                        if (i5 != 1 || z) {
                            if (i5 == 1) {
                                i3 = size;
                                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid, date, uid FROM scheduled_messages_v2 WHERE mid IN(%s) AND uid = %d", TextUtils.join(",", arrayList6), Long.valueOf(j)), new Object[0]);
                                r15 = 0;
                            } else {
                                i3 = size;
                                r15 = 0;
                                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid, date, uid FROM messages_v2 WHERE mid IN(%s) AND uid = %d", TextUtils.join(",", arrayList6), Long.valueOf(j)), new Object[0]);
                            }
                            while (queryFinalized.next()) {
                                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(r15);
                                if (byteBufferValue != null) {
                                    TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(r15), r15);
                                    TLdeserialize.readAttachPath(byteBufferValue, getUserConfig().clientUserId);
                                    byteBufferValue.reuse();
                                    TLdeserialize.f1626id = queryFinalized.intValue(1);
                                    TLdeserialize.date = queryFinalized.intValue(2);
                                    TLdeserialize.dialog_id = j;
                                    MessagesStorage.addUsersAndChatsFromMessage(TLdeserialize, arrayList4, arrayList5, null);
                                    arrayList.add(TLdeserialize);
                                    TLRPC$Peer tLRPC$Peer = TLdeserialize.peer_id;
                                    long j2 = tLRPC$Peer != null ? tLRPC$Peer.channel_id : 0L;
                                    ArrayList arrayList7 = (ArrayList) longSparseArray3.get(j2);
                                    if (arrayList7 != null) {
                                        arrayList7.remove(Integer.valueOf(TLdeserialize.f1626id));
                                        if (arrayList7.isEmpty()) {
                                            longSparseArray3.remove(j2);
                                        }
                                    }
                                }
                            }
                            queryFinalized.dispose();
                        } else {
                            i3 = size;
                        }
                        i5++;
                        size = i3;
                    }
                }
                i4++;
                longSparseArray4 = longSparseArray2;
                size = size;
            }
            int i6 = 0;
            if (!arrayList4.isEmpty()) {
                getMessagesStorage().getUsersInternal(TextUtils.join(",", arrayList4), arrayList2);
            }
            if (!arrayList5.isEmpty()) {
                getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList5), arrayList3);
            }
            broadcastReplyMessages(arrayList, longSparseArray2, arrayList2, arrayList3, j, true);
            if (!longSparseArray3.isEmpty()) {
                int size2 = longSparseArray3.size();
                while (i6 < size2) {
                    final long keyAt2 = longSparseArray3.keyAt(i6);
                    if (z) {
                        final TLRPC$TL_messages_getScheduledMessages tLRPC$TL_messages_getScheduledMessages = new TLRPC$TL_messages_getScheduledMessages();
                        tLRPC$TL_messages_getScheduledMessages.peer = getMessagesController().getInputPeer(j);
                        tLRPC$TL_messages_getScheduledMessages.f1702id = (ArrayList) longSparseArray3.valueAt(i6);
                        i2 = size2;
                        int sendRequest = getConnectionsManager().sendRequest(tLRPC$TL_messages_getScheduledMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda217
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                MediaDataController.this.lambda$loadReplyMessagesForMessages$163(tLRPC$TL_messages_getScheduledMessages, keyAt2, j, longSparseArray2, z, atomicInteger, runnable, tLObject, tLRPC$TL_error);
                            }
                        });
                        if (i != 0) {
                            getConnectionsManager().bindRequestToGuid(sendRequest, i);
                        }
                    } else {
                        i2 = size2;
                        if (keyAt2 != 0) {
                            TLRPC$TL_channels_getMessages tLRPC$TL_channels_getMessages = new TLRPC$TL_channels_getMessages();
                            tLRPC$TL_channels_getMessages.channel = getMessagesController().getInputChannel(keyAt2);
                            tLRPC$TL_channels_getMessages.f1645id = (ArrayList) longSparseArray3.valueAt(i6);
                            int sendRequest2 = getConnectionsManager().sendRequest(tLRPC$TL_channels_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda197
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                    MediaDataController.this.lambda$loadReplyMessagesForMessages$164(j, keyAt2, longSparseArray2, z, atomicInteger, runnable, tLObject, tLRPC$TL_error);
                                }
                            });
                            if (i != 0) {
                                getConnectionsManager().bindRequestToGuid(sendRequest2, i);
                            }
                        } else {
                            TLRPC$TL_messages_getMessages tLRPC$TL_messages_getMessages = new TLRPC$TL_messages_getMessages();
                            tLRPC$TL_messages_getMessages.f1698id = (ArrayList) longSparseArray3.valueAt(i6);
                            int sendRequest3 = getConnectionsManager().sendRequest(tLRPC$TL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda198
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                                    MediaDataController.this.lambda$loadReplyMessagesForMessages$165(j, longSparseArray2, z, atomicInteger, runnable, tLObject, tLRPC$TL_error);
                                }
                            });
                            if (i != 0) {
                                getConnectionsManager().bindRequestToGuid(sendRequest3, i);
                            }
                        }
                    }
                    i6++;
                    size2 = i2;
                }
            } else if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            } else {
                AndroidUtilities.runOnUIThread(runnable);
            }
        } catch (Exception e) {
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadReplyMessagesForMessages$161(AtomicInteger atomicInteger, Runnable runnable) {
        if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$163(TLRPC$TL_messages_getScheduledMessages tLRPC$TL_messages_getScheduledMessages, final long j, final long j2, final LongSparseArray longSparseArray, final boolean z, AtomicInteger atomicInteger, Runnable runnable, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        TLRPC$TL_messages_getMessages tLRPC$TL_messages_getMessages;
        if (tLRPC$TL_error == null) {
            final TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            int i = 0;
            while (i < tLRPC$messages_Messages.messages.size()) {
                if (tLRPC$messages_Messages.messages.get(i) instanceof TLRPC$TL_messageEmpty) {
                    tLRPC$messages_Messages.messages.remove(i);
                    i--;
                }
                i++;
            }
            if (tLRPC$messages_Messages.messages.size() < tLRPC$TL_messages_getScheduledMessages.f1702id.size()) {
                if (j != 0) {
                    TLRPC$TL_channels_getMessages tLRPC$TL_channels_getMessages = new TLRPC$TL_channels_getMessages();
                    tLRPC$TL_channels_getMessages.channel = getMessagesController().getInputChannel(j);
                    tLRPC$TL_channels_getMessages.f1645id = tLRPC$TL_messages_getScheduledMessages.f1702id;
                    tLRPC$TL_messages_getMessages = tLRPC$TL_channels_getMessages;
                } else {
                    TLRPC$TL_messages_getMessages tLRPC$TL_messages_getMessages2 = new TLRPC$TL_messages_getMessages();
                    tLRPC$TL_messages_getMessages2.f1698id = tLRPC$TL_messages_getScheduledMessages.f1702id;
                    tLRPC$TL_messages_getMessages = tLRPC$TL_messages_getMessages2;
                }
                getConnectionsManager().sendRequest(tLRPC$TL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda216
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                        MediaDataController.this.lambda$loadReplyMessagesForMessages$162(tLRPC$TL_error, tLRPC$messages_Messages, j2, j, longSparseArray, z, tLObject2, tLRPC$TL_error2);
                    }
                });
            } else {
                for (int i2 = 0; i2 < tLRPC$messages_Messages.messages.size(); i2++) {
                    TLRPC$Message tLRPC$Message = tLRPC$messages_Messages.messages.get(i2);
                    if (tLRPC$Message.dialog_id == 0) {
                        tLRPC$Message.dialog_id = j2;
                    }
                }
                MessageObject.fixMessagePeer(tLRPC$messages_Messages.messages, j);
                ImageLoader.saveMessagesThumbs(tLRPC$messages_Messages.messages);
                broadcastReplyMessages(tLRPC$messages_Messages.messages, longSparseArray, tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, j2, false);
                getMessagesStorage().putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
                saveReplyMessages(longSparseArray, tLRPC$messages_Messages.messages, z);
            }
        }
        if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$162(TLRPC$TL_error tLRPC$TL_error, TLRPC$messages_Messages tLRPC$messages_Messages, long j, long j2, LongSparseArray longSparseArray, boolean z, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error2) {
        if (tLRPC$TL_error == null) {
            TLRPC$messages_Messages tLRPC$messages_Messages2 = (TLRPC$messages_Messages) tLObject;
            tLRPC$messages_Messages.messages.addAll(tLRPC$messages_Messages2.messages);
            tLRPC$messages_Messages.users.addAll(tLRPC$messages_Messages2.users);
            tLRPC$messages_Messages.chats.addAll(tLRPC$messages_Messages2.chats);
            for (int i = 0; i < tLRPC$messages_Messages.messages.size(); i++) {
                TLRPC$Message tLRPC$Message = tLRPC$messages_Messages.messages.get(i);
                if (tLRPC$Message.dialog_id == 0) {
                    tLRPC$Message.dialog_id = j;
                }
            }
            MessageObject.fixMessagePeer(tLRPC$messages_Messages.messages, j2);
            ImageLoader.saveMessagesThumbs(tLRPC$messages_Messages.messages);
            broadcastReplyMessages(tLRPC$messages_Messages.messages, longSparseArray, tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, j, false);
            getMessagesStorage().putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
            saveReplyMessages(longSparseArray, tLRPC$messages_Messages.messages, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$164(long j, long j2, LongSparseArray longSparseArray, boolean z, AtomicInteger atomicInteger, Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            for (int i = 0; i < tLRPC$messages_Messages.messages.size(); i++) {
                TLRPC$Message tLRPC$Message = tLRPC$messages_Messages.messages.get(i);
                if (tLRPC$Message.dialog_id == 0) {
                    tLRPC$Message.dialog_id = j;
                }
            }
            MessageObject.fixMessagePeer(tLRPC$messages_Messages.messages, j2);
            ImageLoader.saveMessagesThumbs(tLRPC$messages_Messages.messages);
            broadcastReplyMessages(tLRPC$messages_Messages.messages, longSparseArray, tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, j, false);
            getMessagesStorage().putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
            saveReplyMessages(longSparseArray, tLRPC$messages_Messages.messages, z);
        }
        if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyMessagesForMessages$165(long j, LongSparseArray longSparseArray, boolean z, AtomicInteger atomicInteger, Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            for (int i = 0; i < tLRPC$messages_Messages.messages.size(); i++) {
                TLRPC$Message tLRPC$Message = tLRPC$messages_Messages.messages.get(i);
                if (tLRPC$Message.dialog_id == 0) {
                    tLRPC$Message.dialog_id = j;
                }
            }
            ImageLoader.saveMessagesThumbs(tLRPC$messages_Messages.messages);
            broadcastReplyMessages(tLRPC$messages_Messages.messages, longSparseArray, tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, j, false);
            getMessagesStorage().putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
            saveReplyMessages(longSparseArray, tLRPC$messages_Messages.messages, z);
        }
        if (atomicInteger.decrementAndGet() != 0 || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    private void saveReplyMessages(final LongSparseArray<SparseArray<ArrayList<MessageObject>>> longSparseArray, final ArrayList<TLRPC$Message> arrayList, final boolean z) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda138
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$saveReplyMessages$167(z, arrayList, longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveReplyMessages$167(boolean z, ArrayList arrayList, LongSparseArray longSparseArray) {
        SQLitePreparedStatement executeFast;
        ArrayList arrayList2;
        try {
            getMessagesStorage().getDatabase().beginTransaction();
            SQLitePreparedStatement sQLitePreparedStatement = null;
            if (z) {
                executeFast = getMessagesStorage().getDatabase().executeFast("UPDATE scheduled_messages_v2 SET replydata = ?, reply_to_message_id = ? WHERE mid = ? AND uid = ?");
            } else {
                executeFast = getMessagesStorage().getDatabase().executeFast("UPDATE messages_v2 SET replydata = ?, reply_to_message_id = ? WHERE mid = ? AND uid = ?");
                sQLitePreparedStatement = getMessagesStorage().getDatabase().executeFast("UPDATE messages_topics SET replydata = ?, reply_to_message_id = ? WHERE mid = ? AND uid = ?");
            }
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC$Message tLRPC$Message = (TLRPC$Message) arrayList.get(i);
                SparseArray sparseArray = (SparseArray) longSparseArray.get(MessageObject.getDialogId(tLRPC$Message));
                if (sparseArray != null && (arrayList2 = (ArrayList) sparseArray.get(tLRPC$Message.f1626id)) != null) {
                    MessageObject.normalizeFlags(tLRPC$Message);
                    NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$Message.getObjectSize());
                    tLRPC$Message.serializeToStream(nativeByteBuffer);
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        MessageObject messageObject = (MessageObject) arrayList2.get(i2);
                        int i3 = 0;
                        while (i3 < 2) {
                            SQLitePreparedStatement sQLitePreparedStatement2 = i3 == 0 ? executeFast : sQLitePreparedStatement;
                            if (sQLitePreparedStatement2 != null) {
                                sQLitePreparedStatement2.requery();
                                sQLitePreparedStatement2.bindByteBuffer(1, nativeByteBuffer);
                                sQLitePreparedStatement2.bindInteger(2, tLRPC$Message.f1626id);
                                sQLitePreparedStatement2.bindInteger(3, messageObject.getId());
                                sQLitePreparedStatement2.bindLong(4, messageObject.getDialogId());
                                sQLitePreparedStatement2.step();
                            }
                            i3++;
                        }
                    }
                    nativeByteBuffer.reuse();
                }
            }
            executeFast.dispose();
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            getMessagesStorage().getDatabase().commitTransaction();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private void broadcastReplyMessages(ArrayList<TLRPC$Message> arrayList, final LongSparseArray<SparseArray<ArrayList<MessageObject>>> longSparseArray, final ArrayList<TLRPC$User> arrayList2, final ArrayList<TLRPC$Chat> arrayList3, final long j, final boolean z) {
        LongSparseArray longSparseArray2 = new LongSparseArray();
        for (int i = 0; i < arrayList2.size(); i++) {
            TLRPC$User tLRPC$User = arrayList2.get(i);
            longSparseArray2.put(tLRPC$User.f1749id, tLRPC$User);
        }
        LongSparseArray longSparseArray3 = new LongSparseArray();
        for (int i2 = 0; i2 < arrayList3.size(); i2++) {
            TLRPC$Chat tLRPC$Chat = arrayList3.get(i2);
            longSparseArray3.put(tLRPC$Chat.f1602id, tLRPC$Chat);
        }
        final ArrayList arrayList4 = new ArrayList();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList4.add(new MessageObject(this.currentAccount, arrayList.get(i3), (LongSparseArray<TLRPC$User>) longSparseArray2, (LongSparseArray<TLRPC$Chat>) longSparseArray3, false, false));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$broadcastReplyMessages$168(arrayList2, z, arrayList3, arrayList4, longSparseArray, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastReplyMessages$168(ArrayList arrayList, boolean z, ArrayList arrayList2, ArrayList arrayList3, LongSparseArray longSparseArray, long j) {
        ArrayList arrayList4;
        getMessagesController().putUsers(arrayList, z);
        getMessagesController().putChats(arrayList2, z);
        int size = arrayList3.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            MessageObject messageObject = (MessageObject) arrayList3.get(i);
            SparseArray sparseArray = (SparseArray) longSparseArray.get(messageObject.getDialogId());
            if (sparseArray != null && (arrayList4 = (ArrayList) sparseArray.get(messageObject.getId())) != null) {
                for (int i2 = 0; i2 < arrayList4.size(); i2++) {
                    MessageObject messageObject2 = (MessageObject) arrayList4.get(i2);
                    messageObject2.replyMessageObject = messageObject;
                    messageObject2.applyTimestampsHighlightForReplyMsg();
                    TLRPC$MessageAction tLRPC$MessageAction = messageObject2.messageOwner.action;
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionPinMessage) {
                        messageObject2.generatePinMessageText(null, null);
                    } else if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionGameScore) {
                        messageObject2.generateGameMessageText(null);
                    } else if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionPaymentSent) {
                        messageObject2.generatePaymentSentMessageText(null);
                    }
                }
                z2 = true;
            }
        }
        if (z2) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replyMessagesDidLoad, Long.valueOf(j), arrayList3, longSparseArray);
        }
    }

    public static void sortEntities(ArrayList<TLRPC$MessageEntity> arrayList) {
        if (arrayList == null) {
            return;
        }
        Collections.sort(arrayList, entityComparator);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0027 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0029 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean checkInclusion(int r5, java.util.List<org.telegram.tgnet.TLRPC$MessageEntity> r6, boolean r7) {
        /*
            r0 = 0
            if (r6 == 0) goto L2c
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto La
            goto L2c
        La:
            int r1 = r6.size()
            r2 = r0
        Lf:
            if (r2 >= r1) goto L2c
            java.lang.Object r3 = r6.get(r2)
            org.telegram.tgnet.TLRPC$MessageEntity r3 = (org.telegram.tgnet.TLRPC$MessageEntity) r3
            int r4 = r3.offset
            if (r7 == 0) goto L1e
            if (r4 >= r5) goto L29
            goto L20
        L1e:
            if (r4 > r5) goto L29
        L20:
            int r4 = r3.offset
            int r3 = r3.length
            int r4 = r4 + r3
            if (r4 <= r5) goto L29
            r5 = 1
            return r5
        L29:
            int r2 = r2 + 1
            goto Lf
        L2c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.checkInclusion(int, java.util.List, boolean):boolean");
    }

    private static boolean checkIntersection(int i, int i2, List<TLRPC$MessageEntity> list) {
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                TLRPC$MessageEntity tLRPC$MessageEntity = list.get(i3);
                int i4 = tLRPC$MessageEntity.offset;
                if (i4 > i && i4 + tLRPC$MessageEntity.length <= i2) {
                    return true;
                }
            }
        }
        return false;
    }

    public CharSequence substring(CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof SpannableStringBuilder) {
            return charSequence.subSequence(i, i2);
        }
        if (charSequence instanceof SpannedString) {
            return charSequence.subSequence(i, i2);
        }
        return TextUtils.substring(charSequence, i, i2);
    }

    private static CharacterStyle createNewSpan(CharacterStyle characterStyle, TextStyleSpan.TextStyleRun textStyleRun, TextStyleSpan.TextStyleRun textStyleRun2, boolean z) {
        TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun(textStyleRun);
        if (textStyleRun2 != null) {
            if (z) {
                textStyleRun3.merge(textStyleRun2);
            } else {
                textStyleRun3.replace(textStyleRun2);
            }
        }
        if (characterStyle instanceof TextStyleSpan) {
            return new TextStyleSpan(textStyleRun3);
        }
        if (characterStyle instanceof URLSpanReplacement) {
            return new URLSpanReplacement(((URLSpanReplacement) characterStyle).getURL(), textStyleRun3);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void addStyleToText(org.telegram.p043ui.Components.TextStyleSpan r11, int r12, int r13, android.text.Spannable r14, boolean r15) {
        /*
            java.lang.Class<android.text.style.CharacterStyle> r0 = android.text.style.CharacterStyle.class
            java.lang.Object[] r0 = r14.getSpans(r12, r13, r0)     // Catch: java.lang.Exception -> Lc0
            android.text.style.CharacterStyle[] r0 = (android.text.style.CharacterStyle[]) r0     // Catch: java.lang.Exception -> Lc0
            r1 = 33
            if (r0 == 0) goto Laa
            int r2 = r0.length     // Catch: java.lang.Exception -> Lc0
            if (r2 <= 0) goto Laa
            r2 = 0
        L10:
            int r3 = r0.length     // Catch: java.lang.Exception -> Lc0
            if (r2 >= r3) goto Laa
            r3 = r0[r2]     // Catch: java.lang.Exception -> Lc0
            if (r11 == 0) goto L1c
            org.telegram.ui.Components.TextStyleSpan$TextStyleRun r4 = r11.getTextStyleRun()     // Catch: java.lang.Exception -> Lc0
            goto L21
        L1c:
            org.telegram.ui.Components.TextStyleSpan$TextStyleRun r4 = new org.telegram.ui.Components.TextStyleSpan$TextStyleRun     // Catch: java.lang.Exception -> Lc0
            r4.<init>()     // Catch: java.lang.Exception -> Lc0
        L21:
            boolean r5 = r3 instanceof org.telegram.p043ui.Components.TextStyleSpan     // Catch: java.lang.Exception -> Lc0
            if (r5 == 0) goto L2d
            r5 = r3
            org.telegram.ui.Components.TextStyleSpan r5 = (org.telegram.p043ui.Components.TextStyleSpan) r5     // Catch: java.lang.Exception -> Lc0
            org.telegram.ui.Components.TextStyleSpan$TextStyleRun r5 = r5.getTextStyleRun()     // Catch: java.lang.Exception -> Lc0
            goto L3f
        L2d:
            boolean r5 = r3 instanceof org.telegram.p043ui.Components.URLSpanReplacement     // Catch: java.lang.Exception -> Lc0
            if (r5 == 0) goto La6
            r5 = r3
            org.telegram.ui.Components.URLSpanReplacement r5 = (org.telegram.p043ui.Components.URLSpanReplacement) r5     // Catch: java.lang.Exception -> Lc0
            org.telegram.ui.Components.TextStyleSpan$TextStyleRun r5 = r5.getTextStyleRun()     // Catch: java.lang.Exception -> Lc0
            if (r5 != 0) goto L3f
            org.telegram.ui.Components.TextStyleSpan$TextStyleRun r5 = new org.telegram.ui.Components.TextStyleSpan$TextStyleRun     // Catch: java.lang.Exception -> Lc0
            r5.<init>()     // Catch: java.lang.Exception -> Lc0
        L3f:
            if (r5 != 0) goto L43
            goto La6
        L43:
            int r6 = r14.getSpanStart(r3)     // Catch: java.lang.Exception -> Lc0
            int r7 = r14.getSpanEnd(r3)     // Catch: java.lang.Exception -> Lc0
            r14.removeSpan(r3)     // Catch: java.lang.Exception -> Lc0
            if (r6 <= r12) goto L6a
            if (r13 <= r7) goto L6a
            android.text.style.CharacterStyle r3 = createNewSpan(r3, r5, r4, r15)     // Catch: java.lang.Exception -> Lc0
            r14.setSpan(r3, r6, r7, r1)     // Catch: java.lang.Exception -> Lc0
            if (r11 == 0) goto L68
            org.telegram.ui.Components.TextStyleSpan r3 = new org.telegram.ui.Components.TextStyleSpan     // Catch: java.lang.Exception -> Lc0
            org.telegram.ui.Components.TextStyleSpan$TextStyleRun r5 = new org.telegram.ui.Components.TextStyleSpan$TextStyleRun     // Catch: java.lang.Exception -> Lc0
            r5.<init>(r4)     // Catch: java.lang.Exception -> Lc0
            r3.<init>(r5)     // Catch: java.lang.Exception -> Lc0
            r14.setSpan(r3, r7, r13, r1)     // Catch: java.lang.Exception -> Lc0
        L68:
            r13 = r6
            goto La6
        L6a:
            r8 = 0
            if (r6 > r12) goto L87
            if (r6 == r12) goto L76
            android.text.style.CharacterStyle r9 = createNewSpan(r3, r5, r8, r15)     // Catch: java.lang.Exception -> Lc0
            r14.setSpan(r9, r6, r12, r1)     // Catch: java.lang.Exception -> Lc0
        L76:
            if (r7 <= r12) goto L87
            if (r11 == 0) goto L85
            android.text.style.CharacterStyle r9 = createNewSpan(r3, r5, r4, r15)     // Catch: java.lang.Exception -> Lc0
            int r10 = java.lang.Math.min(r7, r13)     // Catch: java.lang.Exception -> Lc0
            r14.setSpan(r9, r12, r10, r1)     // Catch: java.lang.Exception -> Lc0
        L85:
            r9 = r7
            goto L88
        L87:
            r9 = r12
        L88:
            if (r7 < r13) goto La5
            if (r7 == r13) goto L93
            android.text.style.CharacterStyle r8 = createNewSpan(r3, r5, r8, r15)     // Catch: java.lang.Exception -> Lc0
            r14.setSpan(r8, r13, r7, r1)     // Catch: java.lang.Exception -> Lc0
        L93:
            if (r13 <= r6) goto La5
            if (r7 > r12) goto La5
            if (r11 == 0) goto La4
            android.text.style.CharacterStyle r12 = createNewSpan(r3, r5, r4, r15)     // Catch: java.lang.Exception -> Lc0
            int r13 = java.lang.Math.min(r7, r13)     // Catch: java.lang.Exception -> Lc0
            r14.setSpan(r12, r6, r13, r1)     // Catch: java.lang.Exception -> Lc0
        La4:
            r13 = r6
        La5:
            r12 = r9
        La6:
            int r2 = r2 + 1
            goto L10
        Laa:
            if (r11 == 0) goto Lc4
            if (r12 >= r13) goto Lc4
            int r15 = r14.length()     // Catch: java.lang.Exception -> Lc0
            if (r12 >= r15) goto Lc4
            int r15 = r14.length()     // Catch: java.lang.Exception -> Lc0
            int r13 = java.lang.Math.min(r15, r13)     // Catch: java.lang.Exception -> Lc0
            r14.setSpan(r11, r12, r13, r1)     // Catch: java.lang.Exception -> Lc0
            goto Lc4
        Lc0:
            r11 = move-exception
            org.telegram.messenger.FileLog.m99e(r11)
        Lc4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.addStyleToText(org.telegram.ui.Components.TextStyleSpan, int, int, android.text.Spannable, boolean):void");
    }

    public static void addTextStyleRuns(MessageObject messageObject, Spannable spannable) {
        addTextStyleRuns(messageObject.messageOwner.entities, messageObject.messageText, spannable, -1);
    }

    public static void addTextStyleRuns(TLRPC$DraftMessage tLRPC$DraftMessage, Spannable spannable, int i) {
        addTextStyleRuns(tLRPC$DraftMessage.entities, tLRPC$DraftMessage.message, spannable, i);
    }

    public static void addTextStyleRuns(MessageObject messageObject, Spannable spannable, int i) {
        addTextStyleRuns(messageObject.messageOwner.entities, messageObject.messageText, spannable, i);
    }

    public static void addTextStyleRuns(ArrayList<TLRPC$MessageEntity> arrayList, CharSequence charSequence, Spannable spannable) {
        addTextStyleRuns(arrayList, charSequence, spannable, -1);
    }

    public static void addTextStyleRuns(ArrayList<TLRPC$MessageEntity> arrayList, CharSequence charSequence, Spannable spannable, int i) {
        for (TextStyleSpan textStyleSpan : (TextStyleSpan[]) spannable.getSpans(0, spannable.length(), TextStyleSpan.class)) {
            spannable.removeSpan(textStyleSpan);
        }
        Iterator<TextStyleSpan.TextStyleRun> it = getTextStyleRuns(arrayList, charSequence, i).iterator();
        while (it.hasNext()) {
            TextStyleSpan.TextStyleRun next = it.next();
            addStyleToText(new TextStyleSpan(next), next.start, next.end, spannable, true);
        }
    }

    public static void addAnimatedEmojiSpans(ArrayList<TLRPC$MessageEntity> arrayList, CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt) {
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        AnimatedEmojiSpan animatedEmojiSpan;
        if (!(charSequence instanceof Spannable) || arrayList == null) {
            return;
        }
        Spannable spannable = (Spannable) charSequence;
        for (AnimatedEmojiSpan animatedEmojiSpan2 : (AnimatedEmojiSpan[]) spannable.getSpans(0, spannable.length(), AnimatedEmojiSpan.class)) {
            if (animatedEmojiSpan2 != null) {
                spannable.removeSpan(animatedEmojiSpan2);
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC$MessageEntity tLRPC$MessageEntity = arrayList.get(i);
            if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityCustomEmoji) {
                TLRPC$TL_messageEntityCustomEmoji tLRPC$TL_messageEntityCustomEmoji = (TLRPC$TL_messageEntityCustomEmoji) tLRPC$MessageEntity;
                int i2 = tLRPC$MessageEntity.offset;
                int i3 = tLRPC$MessageEntity.length + i2;
                if (i2 < i3 && i3 <= spannable.length()) {
                    if (tLRPC$TL_messageEntityCustomEmoji.document != null) {
                        animatedEmojiSpan = new AnimatedEmojiSpan(tLRPC$TL_messageEntityCustomEmoji.document, fontMetricsInt);
                    } else {
                        animatedEmojiSpan = new AnimatedEmojiSpan(tLRPC$TL_messageEntityCustomEmoji.document_id, fontMetricsInt);
                    }
                    spannable.setSpan(animatedEmojiSpan, i2, i3, 33);
                }
            }
        }
    }

    public static ArrayList<TextStyleSpan.TextStyleRun> getTextStyleRuns(ArrayList<TLRPC$MessageEntity> arrayList, CharSequence charSequence, int i) {
        int i2;
        ArrayList<TextStyleSpan.TextStyleRun> arrayList2 = new ArrayList<>();
        ArrayList arrayList3 = arrayList == null ? new ArrayList() : new ArrayList(arrayList);
        Collections.sort(arrayList3, new Comparator() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda161
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$getTextStyleRuns$169;
                lambda$getTextStyleRuns$169 = MediaDataController.lambda$getTextStyleRuns$169((TLRPC$MessageEntity) obj, (TLRPC$MessageEntity) obj2);
                return lambda$getTextStyleRuns$169;
            }
        });
        int size = arrayList3.size();
        for (int i3 = 0; i3 < size; i3++) {
            TLRPC$MessageEntity tLRPC$MessageEntity = (TLRPC$MessageEntity) arrayList3.get(i3);
            if (tLRPC$MessageEntity != null && tLRPC$MessageEntity.length > 0 && (i2 = tLRPC$MessageEntity.offset) >= 0 && i2 < charSequence.length()) {
                if (tLRPC$MessageEntity.offset + tLRPC$MessageEntity.length > charSequence.length()) {
                    tLRPC$MessageEntity.length = charSequence.length() - tLRPC$MessageEntity.offset;
                }
                if (!(tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityCustomEmoji)) {
                    TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                    int i4 = tLRPC$MessageEntity.offset;
                    textStyleRun.start = i4;
                    textStyleRun.end = i4 + tLRPC$MessageEntity.length;
                    if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntitySpoiler) {
                        textStyleRun.flags = 256;
                    } else if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityStrike) {
                        textStyleRun.flags = 8;
                    } else if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityUnderline) {
                        textStyleRun.flags = 16;
                    } else if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityBold) {
                        textStyleRun.flags = 1;
                    } else if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityItalic) {
                        textStyleRun.flags = 2;
                    } else if ((tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityCode) || (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityPre)) {
                        textStyleRun.flags = 4;
                    } else if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityMentionName) {
                        textStyleRun.flags = 64;
                        textStyleRun.urlEntity = tLRPC$MessageEntity;
                    } else if (tLRPC$MessageEntity instanceof TLRPC$TL_inputMessageEntityMentionName) {
                        textStyleRun.flags = 64;
                        textStyleRun.urlEntity = tLRPC$MessageEntity;
                    } else {
                        textStyleRun.flags = 128;
                        textStyleRun.urlEntity = tLRPC$MessageEntity;
                    }
                    if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityTextUrl) {
                        textStyleRun.flags |= 1024;
                    }
                    textStyleRun.flags &= i;
                    int size2 = arrayList2.size();
                    int i5 = 0;
                    while (i5 < size2) {
                        TextStyleSpan.TextStyleRun textStyleRun2 = arrayList2.get(i5);
                        int i6 = textStyleRun.start;
                        int i7 = textStyleRun2.start;
                        if (i6 > i7) {
                            int i8 = textStyleRun2.end;
                            if (i6 < i8) {
                                if (textStyleRun.end < i8) {
                                    TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                    textStyleRun3.merge(textStyleRun2);
                                    int i9 = i5 + 1;
                                    arrayList2.add(i9, textStyleRun3);
                                    TextStyleSpan.TextStyleRun textStyleRun4 = new TextStyleSpan.TextStyleRun(textStyleRun2);
                                    textStyleRun4.start = textStyleRun.end;
                                    i5 = i9 + 1;
                                    size2 = size2 + 1 + 1;
                                    arrayList2.add(i5, textStyleRun4);
                                } else {
                                    TextStyleSpan.TextStyleRun textStyleRun5 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                    textStyleRun5.merge(textStyleRun2);
                                    textStyleRun5.end = textStyleRun2.end;
                                    i5++;
                                    size2++;
                                    arrayList2.add(i5, textStyleRun5);
                                }
                                int i10 = textStyleRun.start;
                                textStyleRun.start = textStyleRun2.end;
                                textStyleRun2.end = i10;
                            }
                        } else {
                            int i11 = textStyleRun.end;
                            if (i7 < i11) {
                                int i12 = textStyleRun2.end;
                                if (i11 == i12) {
                                    textStyleRun2.merge(textStyleRun);
                                } else if (i11 < i12) {
                                    TextStyleSpan.TextStyleRun textStyleRun6 = new TextStyleSpan.TextStyleRun(textStyleRun2);
                                    textStyleRun6.merge(textStyleRun);
                                    textStyleRun6.end = textStyleRun.end;
                                    i5++;
                                    size2++;
                                    arrayList2.add(i5, textStyleRun6);
                                    textStyleRun2.start = textStyleRun.end;
                                } else {
                                    TextStyleSpan.TextStyleRun textStyleRun7 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                    textStyleRun7.start = textStyleRun2.end;
                                    i5++;
                                    size2++;
                                    arrayList2.add(i5, textStyleRun7);
                                    textStyleRun2.merge(textStyleRun);
                                }
                                textStyleRun.end = i7;
                            }
                        }
                        i5++;
                    }
                    if (textStyleRun.start < textStyleRun.end) {
                        arrayList2.add(textStyleRun);
                    }
                }
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getTextStyleRuns$169(TLRPC$MessageEntity tLRPC$MessageEntity, TLRPC$MessageEntity tLRPC$MessageEntity2) {
        int i = tLRPC$MessageEntity.offset;
        int i2 = tLRPC$MessageEntity2.offset;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    public void addStyle(int i, int i2, int i3, ArrayList<TLRPC$MessageEntity> arrayList) {
        if ((i & 256) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC$TL_messageEntitySpoiler(), i2, i3));
        }
        if ((i & 1) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC$TL_messageEntityBold(), i2, i3));
        }
        if ((i & 2) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC$TL_messageEntityItalic(), i2, i3));
        }
        if ((i & 4) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC$TL_messageEntityCode(), i2, i3));
        }
        if ((i & 8) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC$TL_messageEntityStrike(), i2, i3));
        }
        if ((i & 16) != 0) {
            arrayList.add(setEntityStartEnd(new TLRPC$TL_messageEntityUnderline(), i2, i3));
        }
    }

    private TLRPC$MessageEntity setEntityStartEnd(TLRPC$MessageEntity tLRPC$MessageEntity, int i, int i2) {
        tLRPC$MessageEntity.offset = i;
        tLRPC$MessageEntity.length = i2 - i;
        return tLRPC$MessageEntity;
    }

    public ArrayList<TLRPC$MessageEntity> getEntities(CharSequence[] charSequenceArr, boolean z) {
        int i;
        ArrayList<TLRPC$MessageEntity> arrayList = null;
        if (charSequenceArr != null && charSequenceArr[0] != null) {
            int i2 = -1;
            boolean z2 = false;
            int i3 = 0;
            int i4 = -1;
            while (true) {
                int indexOf = TextUtils.indexOf(charSequenceArr[0], !z2 ? "`" : "```", i3);
                if (indexOf == i2) {
                    break;
                } else if (i4 == i2) {
                    z2 = charSequenceArr[0].length() - indexOf > 2 && charSequenceArr[0].charAt(indexOf + 1) == '`' && charSequenceArr[0].charAt(indexOf + 2) == '`';
                    i4 = indexOf;
                    i3 = indexOf + (z2 ? 3 : 1);
                } else {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    for (int i5 = (z2 ? 3 : 1) + indexOf; i5 < charSequenceArr[0].length() && charSequenceArr[0].charAt(i5) == '`'; i5++) {
                        indexOf++;
                    }
                    int i6 = (z2 ? 3 : 1) + indexOf;
                    if (z2) {
                        char charAt = i4 > 0 ? charSequenceArr[0].charAt(i4 - 1) : (char) 0;
                        int i7 = (charAt == ' ' || charAt == '\n') ? 1 : 0;
                        int i8 = i4 + 3;
                        int indexOf2 = TextUtils.indexOf(charSequenceArr[0], '\n', i8);
                        String substring = (indexOf2 < 0 || indexOf2 - i8 <= 0) ? "" : charSequenceArr[0].toString().substring(i8, indexOf2);
                        CharSequence substring2 = substring(charSequenceArr[0], 0, i4 - i7);
                        int length = i8 + substring.length() + (!substring.isEmpty());
                        if (length < 0 || length >= charSequenceArr[0].length() || length > indexOf) {
                            i3 = i6;
                            i2 = -1;
                        } else {
                            CharSequence substring3 = substring(charSequenceArr[0], length, indexOf);
                            int i9 = indexOf + 3;
                            char charAt2 = i9 < charSequenceArr[0].length() ? charSequenceArr[0].charAt(i9) : (char) 0;
                            CharSequence substring4 = substring(charSequenceArr[0], i9 + ((charAt2 == ' ' || charAt2 == '\n') ? 1 : 0), charSequenceArr[0].length());
                            if (substring2.length() != 0) {
                                i = 1;
                                substring2 = AndroidUtilities.concat(substring2, "\n");
                            } else {
                                i = 1;
                                i7 = 1;
                            }
                            if (substring4.length() > 0 && substring4.charAt(0) != '\n') {
                                CharSequence[] charSequenceArr2 = new CharSequence[2];
                                charSequenceArr2[0] = "\n";
                                charSequenceArr2[i] = substring4;
                                substring4 = AndroidUtilities.concat(charSequenceArr2);
                            }
                            if (substring3.length() > 0 && substring3.charAt(substring3.length() - i) == '\n') {
                                substring3 = substring(substring3, 0, substring3.length() - i);
                            }
                            if (!TextUtils.isEmpty(substring3)) {
                                if (substring3.length() > i && substring3.charAt(0) == '\n') {
                                    substring3 = substring3.subSequence(i, substring3.length());
                                    indexOf--;
                                }
                                CharSequence[] charSequenceArr3 = new CharSequence[3];
                                charSequenceArr3[0] = substring2;
                                charSequenceArr3[i] = substring3;
                                charSequenceArr3[2] = substring4;
                                charSequenceArr[0] = AndroidUtilities.concat(charSequenceArr3);
                                TLRPC$MessageEntity tLRPC$TL_messageEntityPre = new TLRPC$TL_messageEntityPre();
                                tLRPC$TL_messageEntityPre.offset = (i7 ^ 1) + i4;
                                tLRPC$TL_messageEntityPre.length = (((indexOf - i4) - 3) - (substring.length() + (!substring.isEmpty()))) + (i7 ^ 1);
                                tLRPC$TL_messageEntityPre.language = (TextUtils.isEmpty(substring) || substring.trim().length() == 0) ? "" : "";
                                arrayList.add(tLRPC$TL_messageEntityPre);
                                i6 -= 6;
                            }
                        }
                    } else {
                        int i10 = i4 + 1;
                        if (i10 != indexOf) {
                            charSequenceArr[0] = AndroidUtilities.concat(substring(charSequenceArr[0], 0, i4), substring(charSequenceArr[0], i10, indexOf), substring(charSequenceArr[0], indexOf + 1, charSequenceArr[0].length()));
                            TLRPC$MessageEntity tLRPC$TL_messageEntityCode = new TLRPC$TL_messageEntityCode();
                            tLRPC$TL_messageEntityCode.offset = i4;
                            tLRPC$TL_messageEntityCode.length = (indexOf - i4) - 1;
                            arrayList.add(tLRPC$TL_messageEntityCode);
                            i6 -= 2;
                        }
                    }
                    i3 = i6;
                    z2 = false;
                    i2 = -1;
                    i4 = -1;
                }
            }
            if (i4 != i2 && z2) {
                charSequenceArr[0] = AndroidUtilities.concat(substring(charSequenceArr[0], 0, i4), substring(charSequenceArr[0], i4 + 2, charSequenceArr[0].length()));
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                TLRPC$MessageEntity tLRPC$TL_messageEntityCode2 = new TLRPC$TL_messageEntityCode();
                tLRPC$TL_messageEntityCode2.offset = i4;
                tLRPC$TL_messageEntityCode2.length = 1;
                arrayList.add(tLRPC$TL_messageEntityCode2);
            }
            if (charSequenceArr[0] instanceof Spanned) {
                Spanned spanned = (Spanned) charSequenceArr[0];
                TextStyleSpan[] textStyleSpanArr = (TextStyleSpan[]) spanned.getSpans(0, charSequenceArr[0].length(), TextStyleSpan.class);
                if (textStyleSpanArr != null && textStyleSpanArr.length > 0) {
                    for (TextStyleSpan textStyleSpan : textStyleSpanArr) {
                        int spanStart = spanned.getSpanStart(textStyleSpan);
                        int spanEnd = spanned.getSpanEnd(textStyleSpan);
                        if (!checkInclusion(spanStart, arrayList, false) && !checkInclusion(spanEnd, arrayList, true) && !checkIntersection(spanStart, spanEnd, arrayList)) {
                            if (arrayList == null) {
                                arrayList = new ArrayList<>();
                            }
                            addStyle(textStyleSpan.getStyleFlags(), spanStart, spanEnd, arrayList);
                        }
                    }
                }
                URLSpanUserMention[] uRLSpanUserMentionArr = (URLSpanUserMention[]) spanned.getSpans(0, charSequenceArr[0].length(), URLSpanUserMention.class);
                if (uRLSpanUserMentionArr != null && uRLSpanUserMentionArr.length > 0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    for (int i11 = 0; i11 < uRLSpanUserMentionArr.length; i11++) {
                        TLRPC$TL_inputMessageEntityMentionName tLRPC$TL_inputMessageEntityMentionName = new TLRPC$TL_inputMessageEntityMentionName();
                        TLRPC$InputUser inputUser = getMessagesController().getInputUser(Utilities.parseLong(uRLSpanUserMentionArr[i11].getURL()).longValue());
                        tLRPC$TL_inputMessageEntityMentionName.user_id = inputUser;
                        if (inputUser != null) {
                            tLRPC$TL_inputMessageEntityMentionName.offset = spanned.getSpanStart(uRLSpanUserMentionArr[i11]);
                            int min = Math.min(spanned.getSpanEnd(uRLSpanUserMentionArr[i11]), charSequenceArr[0].length());
                            int i12 = tLRPC$TL_inputMessageEntityMentionName.offset;
                            int i13 = min - i12;
                            tLRPC$TL_inputMessageEntityMentionName.length = i13;
                            if (charSequenceArr[0].charAt((i12 + i13) - 1) == ' ') {
                                tLRPC$TL_inputMessageEntityMentionName.length--;
                            }
                            arrayList.add(tLRPC$TL_inputMessageEntityMentionName);
                        }
                    }
                }
                URLSpanReplacement[] uRLSpanReplacementArr = (URLSpanReplacement[]) spanned.getSpans(0, charSequenceArr[0].length(), URLSpanReplacement.class);
                if (uRLSpanReplacementArr != null && uRLSpanReplacementArr.length > 0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    for (int i14 = 0; i14 < uRLSpanReplacementArr.length; i14++) {
                        TLRPC$MessageEntity tLRPC$TL_messageEntityTextUrl = new TLRPC$TL_messageEntityTextUrl();
                        tLRPC$TL_messageEntityTextUrl.offset = spanned.getSpanStart(uRLSpanReplacementArr[i14]);
                        tLRPC$TL_messageEntityTextUrl.length = Math.min(spanned.getSpanEnd(uRLSpanReplacementArr[i14]), charSequenceArr[0].length()) - tLRPC$TL_messageEntityTextUrl.offset;
                        tLRPC$TL_messageEntityTextUrl.url = uRLSpanReplacementArr[i14].getURL();
                        arrayList.add(tLRPC$TL_messageEntityTextUrl);
                        TextStyleSpan.TextStyleRun textStyleRun = uRLSpanReplacementArr[i14].getTextStyleRun();
                        if (textStyleRun != null) {
                            int i15 = textStyleRun.flags;
                            int i16 = tLRPC$TL_messageEntityTextUrl.offset;
                            addStyle(i15, i16, tLRPC$TL_messageEntityTextUrl.length + i16, arrayList);
                        }
                    }
                }
                AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spanned.getSpans(0, charSequenceArr[0].length(), AnimatedEmojiSpan.class);
                if (animatedEmojiSpanArr != null && animatedEmojiSpanArr.length > 0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    ArrayList<TLRPC$MessageEntity> arrayList2 = arrayList;
                    for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr) {
                        if (animatedEmojiSpan != null) {
                            try {
                                TLRPC$TL_messageEntityCustomEmoji tLRPC$TL_messageEntityCustomEmoji = new TLRPC$TL_messageEntityCustomEmoji();
                                tLRPC$TL_messageEntityCustomEmoji.offset = spanned.getSpanStart(animatedEmojiSpan);
                                tLRPC$TL_messageEntityCustomEmoji.length = Math.min(spanned.getSpanEnd(animatedEmojiSpan), charSequenceArr[0].length()) - tLRPC$TL_messageEntityCustomEmoji.offset;
                                tLRPC$TL_messageEntityCustomEmoji.document_id = animatedEmojiSpan.getDocumentId();
                                tLRPC$TL_messageEntityCustomEmoji.document = animatedEmojiSpan.document;
                                arrayList2.add(tLRPC$TL_messageEntityCustomEmoji);
                            } catch (Exception e) {
                                FileLog.m99e(e);
                            }
                        }
                    }
                    arrayList = arrayList2;
                }
                CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) spanned.getSpans(0, charSequenceArr[0].length(), CodeHighlighting.Span.class);
                if (spanArr != null && spanArr.length > 0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    ArrayList<TLRPC$MessageEntity> arrayList3 = arrayList;
                    for (CodeHighlighting.Span span : spanArr) {
                        if (span != null) {
                            try {
                                TLRPC$MessageEntity tLRPC$TL_messageEntityPre2 = new TLRPC$TL_messageEntityPre();
                                tLRPC$TL_messageEntityPre2.offset = spanned.getSpanStart(span);
                                tLRPC$TL_messageEntityPre2.length = Math.min(spanned.getSpanEnd(span), charSequenceArr[0].length()) - tLRPC$TL_messageEntityPre2.offset;
                                tLRPC$TL_messageEntityPre2.language = span.lng;
                                arrayList3.add(tLRPC$TL_messageEntityPre2);
                            } catch (Exception e2) {
                                FileLog.m99e(e2);
                            }
                        }
                    }
                    arrayList = arrayList3;
                }
                QuoteSpan[] quoteSpanArr = (QuoteSpan[]) spanned.getSpans(0, charSequenceArr[0].length(), QuoteSpan.class);
                if (quoteSpanArr != null && quoteSpanArr.length > 0) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    ArrayList<TLRPC$MessageEntity> arrayList4 = arrayList;
                    for (QuoteSpan quoteSpan : quoteSpanArr) {
                        if (quoteSpan != null) {
                            try {
                                TLRPC$MessageEntity tLRPC$TL_messageEntityBlockquote = new TLRPC$TL_messageEntityBlockquote();
                                tLRPC$TL_messageEntityBlockquote.offset = spanned.getSpanStart(quoteSpan);
                                tLRPC$TL_messageEntityBlockquote.length = Math.min(spanned.getSpanEnd(quoteSpan), charSequenceArr[0].length()) - tLRPC$TL_messageEntityBlockquote.offset;
                                arrayList4.add(tLRPC$TL_messageEntityBlockquote);
                            } catch (Exception e3) {
                                FileLog.m99e(e3);
                            }
                        }
                    }
                    arrayList = arrayList4;
                }
                if (spanned instanceof Spannable) {
                    AndroidUtilities.addLinks((Spannable) spanned, 1, false, false);
                    URLSpan[] uRLSpanArr = (URLSpan[]) spanned.getSpans(0, charSequenceArr[0].length(), URLSpan.class);
                    if (uRLSpanArr != null && uRLSpanArr.length > 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        for (int i17 = 0; i17 < uRLSpanArr.length; i17++) {
                            if (!(uRLSpanArr[i17] instanceof URLSpanReplacement) && !(uRLSpanArr[i17] instanceof URLSpanUserMention)) {
                                TLRPC$MessageEntity tLRPC$TL_messageEntityUrl = new TLRPC$TL_messageEntityUrl();
                                tLRPC$TL_messageEntityUrl.offset = spanned.getSpanStart(uRLSpanArr[i17]);
                                tLRPC$TL_messageEntityUrl.length = Math.min(spanned.getSpanEnd(uRLSpanArr[i17]), charSequenceArr[0].length()) - tLRPC$TL_messageEntityUrl.offset;
                                tLRPC$TL_messageEntityUrl.url = uRLSpanArr[i17].getURL();
                                arrayList.add(tLRPC$TL_messageEntityUrl);
                            }
                        }
                    }
                }
            }
            CharSequence charSequence = charSequenceArr[0];
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            CharSequence parsePattern = parsePattern(parsePattern(parsePattern(charSequence, BOLD_PATTERN, arrayList, new GenericProvider() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda166
                @Override // org.telegram.messenger.GenericProvider
                public final Object provide(Object obj) {
                    TLRPC$MessageEntity lambda$getEntities$170;
                    lambda$getEntities$170 = MediaDataController.lambda$getEntities$170((Void) obj);
                    return lambda$getEntities$170;
                }
            }), ITALIC_PATTERN, arrayList, new GenericProvider() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda164
                @Override // org.telegram.messenger.GenericProvider
                public final Object provide(Object obj) {
                    TLRPC$MessageEntity lambda$getEntities$171;
                    lambda$getEntities$171 = MediaDataController.lambda$getEntities$171((Void) obj);
                    return lambda$getEntities$171;
                }
            }), SPOILER_PATTERN, arrayList, new GenericProvider() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda167
                @Override // org.telegram.messenger.GenericProvider
                public final Object provide(Object obj) {
                    TLRPC$MessageEntity lambda$getEntities$172;
                    lambda$getEntities$172 = MediaDataController.lambda$getEntities$172((Void) obj);
                    return lambda$getEntities$172;
                }
            });
            if (z) {
                parsePattern = parsePattern(parsePattern, STRIKE_PATTERN, arrayList, new GenericProvider() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda165
                    @Override // org.telegram.messenger.GenericProvider
                    public final Object provide(Object obj) {
                        TLRPC$MessageEntity lambda$getEntities$173;
                        lambda$getEntities$173 = MediaDataController.lambda$getEntities$173((Void) obj);
                        return lambda$getEntities$173;
                    }
                });
            }
            charSequenceArr[0] = parsePattern;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TLRPC$MessageEntity lambda$getEntities$170(Void r0) {
        return new TLRPC$TL_messageEntityBold();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TLRPC$MessageEntity lambda$getEntities$171(Void r0) {
        return new TLRPC$TL_messageEntityItalic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TLRPC$MessageEntity lambda$getEntities$172(Void r0) {
        return new TLRPC$TL_messageEntitySpoiler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TLRPC$MessageEntity lambda$getEntities$173(Void r0) {
        return new TLRPC$TL_messageEntityStrike();
    }

    private CharSequence parsePattern(CharSequence charSequence, Pattern pattern, ArrayList<TLRPC$MessageEntity> arrayList, GenericProvider<Void, TLRPC$MessageEntity> genericProvider) {
        URLSpan[] uRLSpanArr;
        Matcher matcher = pattern.matcher(charSequence);
        int i = 0;
        while (matcher.find()) {
            boolean z = true;
            String group = matcher.group(1);
            if ((charSequence instanceof Spannable) && (uRLSpanArr = (URLSpan[]) ((Spannable) charSequence).getSpans(matcher.start() - i, matcher.end() - i, URLSpan.class)) != null && uRLSpanArr.length > 0) {
                z = false;
            }
            if (z) {
                int i2 = 0;
                while (true) {
                    if (i2 < arrayList.size()) {
                        if ((arrayList.get(i2) instanceof TLRPC$TL_messageEntityPre) && AndroidUtilities.intersect1d(matcher.start() - i, matcher.end() - i, arrayList.get(i2).offset, arrayList.get(i2).offset + arrayList.get(i2).length)) {
                            z = false;
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
            }
            if (z) {
                charSequence = ((Object) charSequence.subSequence(0, matcher.start() - i)) + group + ((Object) charSequence.subSequence(matcher.end() - i, charSequence.length()));
                TLRPC$MessageEntity provide = genericProvider.provide(null);
                provide.offset = matcher.start() - i;
                int length = group.length();
                provide.length = length;
                int i3 = provide.offset;
                removeOffset4After(i3, length + i3, arrayList);
                arrayList.add(provide);
            }
            i += (matcher.end() - matcher.start()) - group.length();
        }
        return charSequence;
    }

    private static void removeOffset4After(int i, int i2, ArrayList<TLRPC$MessageEntity> arrayList) {
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            TLRPC$MessageEntity tLRPC$MessageEntity = arrayList.get(i3);
            int i4 = tLRPC$MessageEntity.offset;
            if (i4 > i2) {
                tLRPC$MessageEntity.offset = i4 - 4;
            } else if (i4 > i) {
                tLRPC$MessageEntity.offset = i4 - 2;
            }
        }
    }

    public void loadDraftsIfNeed() {
        if (getUserConfig().draftsLoaded || this.loadingDrafts) {
            return;
        }
        this.loadingDrafts = true;
        getConnectionsManager().sendRequest(new TLObject() { // from class: org.telegram.tgnet.TLRPC$TL_messages_getAllDrafts
            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
                return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(1782549861);
            }
        }, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda178
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadDraftsIfNeed$176(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDraftsIfNeed$174() {
        this.loadingDrafts = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDraftsIfNeed$176(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadDraftsIfNeed$174();
                }
            });
            return;
        }
        getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadDraftsIfNeed$175();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDraftsIfNeed$175() {
        this.loadingDrafts = false;
        UserConfig userConfig = getUserConfig();
        userConfig.draftsLoaded = true;
        userConfig.saveConfig(false);
    }

    public int getDraftFolderId(long j) {
        return this.draftsFolderIds.get(j, 0).intValue();
    }

    public void setDraftFolderId(long j, int i) {
        this.draftsFolderIds.put(j, Integer.valueOf(i));
    }

    public void clearDraftsFolderIds() {
        this.draftsFolderIds.clear();
    }

    public LongSparseArray<SparseArray<TLRPC$DraftMessage>> getDrafts() {
        return this.drafts;
    }

    public TLRPC$DraftMessage getDraft(long j, int i) {
        SparseArray<TLRPC$DraftMessage> sparseArray = this.drafts.get(j);
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i);
    }

    public Pair<Integer, TLRPC$DraftMessage> getOneThreadDraft(long j) {
        SparseArray<TLRPC$DraftMessage> sparseArray = this.drafts.get(j);
        if (sparseArray != null && sparseArray.size() > 0) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (sparseArray.keyAt(i) != 0) {
                    return new Pair<>(Integer.valueOf(sparseArray.keyAt(i)), sparseArray.valueAt(i));
                }
            }
        }
        return null;
    }

    public TLRPC$Message getDraftMessage(long j, int i) {
        SparseArray<TLRPC$Message> sparseArray = this.draftMessages.get(j);
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i);
    }

    public void saveDraft(long j, int i, CharSequence charSequence, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$Message tLRPC$Message, boolean z) {
        saveDraft(j, i, charSequence, arrayList, tLRPC$Message, null, z, false);
    }

    public void saveDraft(long j, int i, CharSequence charSequence, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$Message tLRPC$Message, ChatActivity.ReplyQuote replyQuote, boolean z, boolean z2) {
        TLRPC$DraftMessage tLRPC$TL_draftMessage;
        TLRPC$InputReplyTo tLRPC$InputReplyTo;
        TLRPC$Message tLRPC$Message2 = (getMessagesController().isForum(j) && i == 0) ? null : tLRPC$Message;
        if (!TextUtils.isEmpty(charSequence) || tLRPC$Message2 != null) {
            tLRPC$TL_draftMessage = new TLRPC$TL_draftMessage();
        } else {
            tLRPC$TL_draftMessage = new TLRPC$TL_draftMessageEmpty();
        }
        TLRPC$DraftMessage tLRPC$DraftMessage = tLRPC$TL_draftMessage;
        tLRPC$DraftMessage.date = (int) (System.currentTimeMillis() / 1000);
        tLRPC$DraftMessage.message = charSequence == null ? "" : charSequence.toString();
        tLRPC$DraftMessage.no_webpage = z;
        if (tLRPC$Message2 != null) {
            TLRPC$TL_inputReplyToMessage tLRPC$TL_inputReplyToMessage = new TLRPC$TL_inputReplyToMessage();
            tLRPC$DraftMessage.reply_to = tLRPC$TL_inputReplyToMessage;
            tLRPC$DraftMessage.flags |= 16;
            tLRPC$TL_inputReplyToMessage.reply_to_msg_id = tLRPC$Message2.f1626id;
            if (replyQuote != null) {
                tLRPC$TL_inputReplyToMessage.quote_text = replyQuote.getText();
                TLRPC$InputReplyTo tLRPC$InputReplyTo2 = tLRPC$DraftMessage.reply_to;
                if (tLRPC$InputReplyTo2.quote_text != null) {
                    tLRPC$InputReplyTo2.flags |= 64;
                }
                tLRPC$InputReplyTo2.quote_entities = replyQuote.getEntities();
                ArrayList<TLRPC$MessageEntity> arrayList2 = tLRPC$DraftMessage.reply_to.quote_entities;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    tLRPC$DraftMessage.reply_to.quote_entities = new ArrayList<>(tLRPC$DraftMessage.reply_to.quote_entities);
                    tLRPC$DraftMessage.reply_to.flags |= 128;
                }
                MessageObject messageObject = replyQuote.message;
                if (messageObject != null && messageObject.messageOwner != null) {
                    TLRPC$Peer peer = getMessagesController().getPeer(j);
                    TLRPC$Peer tLRPC$Peer = replyQuote.message.messageOwner.peer_id;
                    if (peer != null && !MessageObject.peersEqual(peer, tLRPC$Peer)) {
                        TLRPC$InputReplyTo tLRPC$InputReplyTo3 = tLRPC$DraftMessage.reply_to;
                        tLRPC$InputReplyTo3.flags |= 2;
                        tLRPC$InputReplyTo3.reply_to_peer_id = getMessagesController().getInputPeer(tLRPC$Peer);
                    }
                }
            } else if (j != MessageObject.getDialogId(tLRPC$Message2)) {
                TLRPC$InputReplyTo tLRPC$InputReplyTo4 = tLRPC$DraftMessage.reply_to;
                tLRPC$InputReplyTo4.flags |= 2;
                tLRPC$InputReplyTo4.reply_to_peer_id = getMessagesController().getInputPeer(getMessagesController().getPeer(MessageObject.getDialogId(tLRPC$Message2)));
            }
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            tLRPC$DraftMessage.entities = arrayList;
            tLRPC$DraftMessage.flags |= 8;
        }
        SparseArray<TLRPC$DraftMessage> sparseArray = this.drafts.get(j);
        TLRPC$DraftMessage tLRPC$DraftMessage2 = sparseArray == null ? null : sparseArray.get(i);
        if (!z2) {
            boolean z3 = true;
            if (tLRPC$DraftMessage2 == null ? !TextUtils.isEmpty(tLRPC$DraftMessage.message) || ((tLRPC$InputReplyTo = tLRPC$DraftMessage.reply_to) != null && tLRPC$InputReplyTo.reply_to_msg_id != 0) : !tLRPC$DraftMessage2.message.equals(tLRPC$DraftMessage.message) || !replyToEquals(tLRPC$DraftMessage2.reply_to, tLRPC$DraftMessage.reply_to) || tLRPC$DraftMessage2.no_webpage != tLRPC$DraftMessage.no_webpage) {
                z3 = false;
            }
            if (z3) {
                return;
            }
        }
        saveDraft(j, i, tLRPC$DraftMessage, tLRPC$Message2, false);
        if (i == 0 || ChatObject.isForum(this.currentAccount, j)) {
            if (!DialogObject.isEncryptedDialog(j)) {
                TLRPC$TL_messages_saveDraft tLRPC$TL_messages_saveDraft = new TLRPC$TL_messages_saveDraft();
                TLRPC$InputPeer inputPeer = getMessagesController().getInputPeer(j);
                tLRPC$TL_messages_saveDraft.peer = inputPeer;
                if (inputPeer == null) {
                    return;
                }
                tLRPC$TL_messages_saveDraft.message = tLRPC$DraftMessage.message;
                tLRPC$TL_messages_saveDraft.no_webpage = tLRPC$DraftMessage.no_webpage;
                TLRPC$InputReplyTo tLRPC$InputReplyTo5 = tLRPC$DraftMessage.reply_to;
                tLRPC$TL_messages_saveDraft.reply_to = tLRPC$InputReplyTo5;
                if (tLRPC$InputReplyTo5 != null) {
                    tLRPC$TL_messages_saveDraft.flags |= 16;
                }
                if ((tLRPC$DraftMessage.flags & 8) != 0) {
                    tLRPC$TL_messages_saveDraft.entities = tLRPC$DraftMessage.entities;
                    tLRPC$TL_messages_saveDraft.flags |= 8;
                }
                getConnectionsManager().sendRequest(tLRPC$TL_messages_saveDraft, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda222
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        MediaDataController.lambda$saveDraft$177(tLObject, tLRPC$TL_error);
                    }
                });
            }
            getMessagesController().sortDialogs(null);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        }
    }

    private static boolean replyToEquals(TLRPC$InputReplyTo tLRPC$InputReplyTo, TLRPC$InputReplyTo tLRPC$InputReplyTo2) {
        if (tLRPC$InputReplyTo == tLRPC$InputReplyTo2) {
            return true;
        }
        boolean z = tLRPC$InputReplyTo instanceof TLRPC$TL_inputReplyToMessage;
        if (z != (tLRPC$InputReplyTo2 instanceof TLRPC$TL_inputReplyToMessage)) {
            return false;
        }
        if (z) {
            return MessageObject.peersEqual(tLRPC$InputReplyTo.reply_to_peer_id, tLRPC$InputReplyTo2.reply_to_peer_id) && TextUtils.equals(tLRPC$InputReplyTo.quote_text, tLRPC$InputReplyTo2.quote_text) && tLRPC$InputReplyTo.reply_to_msg_id == tLRPC$InputReplyTo2.reply_to_msg_id;
        } else if (tLRPC$InputReplyTo instanceof TLRPC$TL_inputReplyToStory) {
            return tLRPC$InputReplyTo.user_id == tLRPC$InputReplyTo2.user_id && tLRPC$InputReplyTo.story_id == tLRPC$InputReplyTo2.story_id;
        } else {
            return true;
        }
    }

    private static TLRPC$InputReplyTo toInputReplyTo(int i, TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader) {
        if (tLRPC$MessageReplyHeader instanceof TLRPC$TL_messageReplyStoryHeader) {
            TLRPC$TL_inputReplyToStory tLRPC$TL_inputReplyToStory = new TLRPC$TL_inputReplyToStory();
            tLRPC$TL_inputReplyToStory.user_id = MessagesController.getInstance(i).getInputUser(tLRPC$MessageReplyHeader.user_id);
            tLRPC$TL_inputReplyToStory.story_id = tLRPC$MessageReplyHeader.story_id;
            return tLRPC$TL_inputReplyToStory;
        } else if (tLRPC$MessageReplyHeader instanceof TLRPC$TL_messageReplyHeader) {
            TLRPC$TL_inputReplyToMessage tLRPC$TL_inputReplyToMessage = new TLRPC$TL_inputReplyToMessage();
            tLRPC$TL_inputReplyToMessage.reply_to_msg_id = tLRPC$MessageReplyHeader.reply_to_msg_id;
            if ((tLRPC$MessageReplyHeader.flags & 1) != 0) {
                TLRPC$InputPeer inputPeer = MessagesController.getInstance(i).getInputPeer(tLRPC$MessageReplyHeader.reply_to_peer_id);
                tLRPC$TL_inputReplyToMessage.reply_to_peer_id = inputPeer;
                if (inputPeer != null) {
                    tLRPC$TL_inputReplyToMessage.flags |= 2;
                }
            }
            int i2 = tLRPC$MessageReplyHeader.flags;
            if ((i2 & 2) != 0) {
                tLRPC$TL_inputReplyToMessage.flags |= 1;
                tLRPC$TL_inputReplyToMessage.top_msg_id = tLRPC$MessageReplyHeader.reply_to_top_id;
            }
            if ((i2 & 64) != 0) {
                tLRPC$TL_inputReplyToMessage.flags |= 4;
                tLRPC$TL_inputReplyToMessage.quote_text = tLRPC$MessageReplyHeader.quote_text;
            }
            if ((i2 & 128) != 0) {
                tLRPC$TL_inputReplyToMessage.flags |= 8;
                tLRPC$TL_inputReplyToMessage.quote_entities = tLRPC$MessageReplyHeader.quote_entities;
            }
            return tLRPC$TL_inputReplyToMessage;
        } else {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0178, code lost:
        if (org.telegram.messenger.MessageObject.peersEqual(r9.reply_to_peer_id, r4.peer_id) != false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void saveDraft(final long r18, final int r20, org.telegram.tgnet.TLRPC$DraftMessage r21, org.telegram.tgnet.TLRPC$Message r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.saveDraft(long, int, org.telegram.tgnet.TLRPC$DraftMessage, org.telegram.tgnet.TLRPC$Message, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0117 A[Catch: Exception -> 0x011b, TRY_LEAVE, TryCatch #3 {Exception -> 0x011b, blocks: (B:3:0x0008, B:5:0x0035, B:7:0x003b, B:10:0x0053, B:39:0x00b8, B:42:0x00cc, B:46:0x00d7, B:47:0x00fc, B:48:0x0117, B:38:0x00b1), top: B:59:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$saveDraft$180(int r20, long r21, long r23, final long r25, final int r27) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$saveDraft$180(int, long, long, long, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDraft$178(long j, int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            if (tLRPC$messages_Messages.messages.isEmpty()) {
                return;
            }
            saveDraftReplyMessage(j, i, tLRPC$messages_Messages.messages.get(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDraft$179(long j, int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            if (tLRPC$messages_Messages.messages.isEmpty()) {
                return;
            }
            saveDraftReplyMessage(j, i, tLRPC$messages_Messages.messages.get(0));
        }
    }

    private void saveDraftReplyMessage(final long j, final int i, final TLRPC$Message tLRPC$Message) {
        if (tLRPC$Message == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$saveDraftReplyMessage$181(j, i, tLRPC$Message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDraftReplyMessage$181(long j, int i, TLRPC$Message tLRPC$Message) {
        TLRPC$InputReplyTo tLRPC$InputReplyTo;
        String str;
        SparseArray<TLRPC$DraftMessage> sparseArray = this.drafts.get(j);
        TLRPC$DraftMessage tLRPC$DraftMessage = sparseArray != null ? sparseArray.get(i) : null;
        if (tLRPC$DraftMessage == null || (tLRPC$InputReplyTo = tLRPC$DraftMessage.reply_to) == null || tLRPC$InputReplyTo.reply_to_msg_id != tLRPC$Message.f1626id) {
            return;
        }
        SparseArray<TLRPC$Message> sparseArray2 = this.draftMessages.get(j);
        if (sparseArray2 == null) {
            sparseArray2 = new SparseArray<>();
            this.draftMessages.put(j, sparseArray2);
        }
        sparseArray2.put(i, tLRPC$Message);
        SerializedData serializedData = new SerializedData(tLRPC$Message.getObjectSize());
        tLRPC$Message.serializeToStream(serializedData);
        SharedPreferences.Editor edit = this.draftPreferences.edit();
        if (i == 0) {
            str = "r_" + j;
        } else {
            str = "rt_" + j + "_" + i;
        }
        edit.putString(str, Utilities.bytesToHex(serializedData.toByteArray())).commit();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newDraftReceived, Long.valueOf(j));
        serializedData.cleanup();
    }

    public void clearAllDrafts(boolean z) {
        this.drafts.clear();
        this.draftMessages.clear();
        this.draftsFolderIds.clear();
        this.draftPreferences.edit().clear().commit();
        if (z) {
            getMessagesController().sortDialogs(null);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        }
    }

    public void cleanDraft(long j, int i, boolean z) {
        SparseArray<TLRPC$DraftMessage> sparseArray = this.drafts.get(j);
        TLRPC$DraftMessage tLRPC$DraftMessage = sparseArray != null ? sparseArray.get(i) : null;
        if (tLRPC$DraftMessage == null) {
            return;
        }
        if (!z) {
            SparseArray<TLRPC$DraftMessage> sparseArray2 = this.drafts.get(j);
            if (sparseArray2 != null) {
                sparseArray2.remove(i);
                if (sparseArray2.size() == 0) {
                    this.drafts.remove(j);
                }
            }
            SparseArray<TLRPC$Message> sparseArray3 = this.draftMessages.get(j);
            if (sparseArray3 != null) {
                sparseArray3.remove(i);
                if (sparseArray3.size() == 0) {
                    this.draftMessages.remove(j);
                }
            }
            if (i == 0) {
                this.draftPreferences.edit().remove("" + j).remove("r_" + j).commit();
                getMessagesController().sortDialogs(null);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
                return;
            }
            this.draftPreferences.edit().remove("t_" + j + "_" + i).remove("rt_" + j + "_" + i).commit();
            return;
        }
        TLRPC$InputReplyTo tLRPC$InputReplyTo = tLRPC$DraftMessage.reply_to;
        if (tLRPC$InputReplyTo == null || tLRPC$InputReplyTo.reply_to_msg_id != 0) {
            if (tLRPC$InputReplyTo != null) {
                tLRPC$InputReplyTo.reply_to_msg_id = 0;
            }
            tLRPC$DraftMessage.flags &= -2;
            saveDraft(j, i, tLRPC$DraftMessage.message, tLRPC$DraftMessage.entities, null, null, tLRPC$DraftMessage.no_webpage, true);
        }
    }

    public void beginTransaction() {
        this.inTransaction = true;
    }

    public void endTransaction() {
        this.inTransaction = false;
    }

    public void clearBotKeyboard(final MessagesStorage.TopicKey topicKey, final ArrayList<Integer> arrayList) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$clearBotKeyboard$182(arrayList, topicKey);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearBotKeyboard$182(ArrayList arrayList, MessagesStorage.TopicKey topicKey) {
        if (arrayList == null) {
            if (topicKey != null) {
                this.botKeyboards.remove(topicKey);
                this.botDialogKeyboards.remove(topicKey.dialogId);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, null, topicKey);
                return;
            }
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            int intValue = ((Integer) arrayList.get(i)).intValue();
            long j = intValue;
            MessagesStorage.TopicKey topicKey2 = this.botKeyboardsByMids.get(j);
            if (topicKey2 != null) {
                this.botKeyboards.remove(topicKey2);
                ArrayList<TLRPC$Message> arrayList2 = this.botDialogKeyboards.get(topicKey2.dialogId);
                if (arrayList2 != null) {
                    int i2 = 0;
                    while (i2 < arrayList2.size()) {
                        TLRPC$Message tLRPC$Message = arrayList2.get(i2);
                        if (tLRPC$Message == null || tLRPC$Message.f1626id == intValue) {
                            arrayList2.remove(i2);
                            i2--;
                        }
                        i2++;
                    }
                    if (arrayList2.isEmpty()) {
                        this.botDialogKeyboards.remove(topicKey2.dialogId);
                    }
                }
                this.botKeyboardsByMids.remove(j);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, null, topicKey2);
            }
        }
    }

    public void clearBotKeyboard(final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$clearBotKeyboard$183(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearBotKeyboard$183(long j) {
        ArrayList<TLRPC$Message> arrayList = this.botDialogKeyboards.get(j);
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                MessagesStorage.TopicKey m95of = MessagesStorage.TopicKey.m95of(j, MessageObject.getTopicId(arrayList.get(i), ChatObject.isForum(this.currentAccount, j)));
                this.botKeyboards.remove(m95of);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, null, m95of);
            }
        }
        this.botDialogKeyboards.remove(j);
    }

    public void loadBotKeyboard(final MessagesStorage.TopicKey topicKey) {
        TLRPC$Message tLRPC$Message = this.botKeyboards.get(topicKey);
        if (tLRPC$Message != null) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, tLRPC$Message, topicKey);
        } else {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda84
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$loadBotKeyboard$185(topicKey);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBotKeyboard$185(final MessagesStorage.TopicKey topicKey) {
        SQLiteCursor queryFinalized;
        NativeByteBuffer byteBufferValue;
        final TLRPC$Message tLRPC$Message = null;
        try {
            if (topicKey.topicId != 0) {
                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT info FROM bot_keyboard_topics WHERE uid = %d AND tid = %d", Long.valueOf(topicKey.dialogId), Integer.valueOf(topicKey.topicId)), new Object[0]);
            } else {
                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT info FROM bot_keyboard WHERE uid = %d", Long.valueOf(topicKey.dialogId)), new Object[0]);
            }
            if (queryFinalized.next() && !queryFinalized.isNull(0) && (byteBufferValue = queryFinalized.byteBufferValue(0)) != null) {
                tLRPC$Message = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                byteBufferValue.reuse();
            }
            queryFinalized.dispose();
            if (tLRPC$Message != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda105
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.this.lambda$loadBotKeyboard$184(tLRPC$Message, topicKey);
                    }
                });
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBotKeyboard$184(TLRPC$Message tLRPC$Message, MessagesStorage.TopicKey topicKey) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, tLRPC$Message, topicKey);
    }

    private TLRPC$BotInfo loadBotInfoInternal(long j, long j2) throws SQLiteException {
        TLRPC$BotInfo tLRPC$BotInfo;
        NativeByteBuffer byteBufferValue;
        SQLiteCursor queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT info FROM bot_info_v2 WHERE uid = %d AND dialogId = %d", Long.valueOf(j), Long.valueOf(j2)), new Object[0]);
        if (!queryFinalized.next() || queryFinalized.isNull(0) || (byteBufferValue = queryFinalized.byteBufferValue(0)) == null) {
            tLRPC$BotInfo = null;
        } else {
            tLRPC$BotInfo = TLRPC$BotInfo.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
            byteBufferValue.reuse();
        }
        queryFinalized.dispose();
        return tLRPC$BotInfo;
    }

    public void loadBotInfo(final long j, final long j2, boolean z, final int i) {
        if (z) {
            HashMap<String, TLRPC$BotInfo> hashMap = this.botInfos;
            TLRPC$BotInfo tLRPC$BotInfo = hashMap.get(j + "_" + j2);
            if (tLRPC$BotInfo != null) {
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botInfoDidLoad, tLRPC$BotInfo, Integer.valueOf(i));
                return;
            }
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadBotInfo$187(j, j2, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBotInfo$187(long j, long j2, final int i) {
        try {
            final TLRPC$BotInfo loadBotInfoInternal = loadBotInfoInternal(j, j2);
            if (loadBotInfoInternal != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda98
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.this.lambda$loadBotInfo$186(loadBotInfoInternal, i);
                    }
                });
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBotInfo$186(TLRPC$BotInfo tLRPC$BotInfo, int i) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botInfoDidLoad, tLRPC$BotInfo, Integer.valueOf(i));
    }

    public void putBotKeyboard(final MessagesStorage.TopicKey topicKey, final TLRPC$Message tLRPC$Message) {
        SQLiteCursor queryFinalized;
        SQLitePreparedStatement executeFast;
        if (topicKey == null) {
            return;
        }
        try {
            if (topicKey.topicId != 0) {
                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT mid FROM bot_keyboard_topics WHERE uid = %d AND tid = %d", Long.valueOf(topicKey.dialogId), Integer.valueOf(topicKey.topicId)), new Object[0]);
            } else {
                queryFinalized = getMessagesStorage().getDatabase().queryFinalized(String.format(Locale.US, "SELECT mid FROM bot_keyboard WHERE uid = %d", Long.valueOf(topicKey.dialogId)), new Object[0]);
            }
            int intValue = queryFinalized.next() ? queryFinalized.intValue(0) : 0;
            queryFinalized.dispose();
            if (intValue >= tLRPC$Message.f1626id) {
                return;
            }
            if (topicKey.topicId != 0) {
                executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO bot_keyboard_topics VALUES(?, ?, ?, ?)");
            } else {
                executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO bot_keyboard VALUES(?, ?, ?)");
            }
            executeFast.requery();
            MessageObject.normalizeFlags(tLRPC$Message);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$Message.getObjectSize());
            tLRPC$Message.serializeToStream(nativeByteBuffer);
            if (topicKey.topicId != 0) {
                executeFast.bindLong(1, topicKey.dialogId);
                executeFast.bindInteger(2, topicKey.topicId);
                executeFast.bindInteger(3, tLRPC$Message.f1626id);
                executeFast.bindByteBuffer(4, nativeByteBuffer);
            } else {
                executeFast.bindLong(1, topicKey.dialogId);
                executeFast.bindInteger(2, tLRPC$Message.f1626id);
                executeFast.bindByteBuffer(3, nativeByteBuffer);
            }
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda85
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$putBotKeyboard$188(topicKey, tLRPC$Message);
                }
            });
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putBotKeyboard$188(MessagesStorage.TopicKey topicKey, TLRPC$Message tLRPC$Message) {
        TLRPC$Message tLRPC$Message2 = this.botKeyboards.get(topicKey);
        this.botKeyboards.put(topicKey, tLRPC$Message);
        ArrayList<TLRPC$Message> arrayList = this.botDialogKeyboards.get(topicKey.dialogId);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(tLRPC$Message);
        this.botDialogKeyboards.put(topicKey.dialogId, arrayList);
        if (MessageObject.getChannelId(tLRPC$Message) == 0) {
            if (tLRPC$Message2 != null) {
                this.botKeyboardsByMids.delete(tLRPC$Message2.f1626id);
            }
            this.botKeyboardsByMids.put(tLRPC$Message.f1626id, topicKey);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botKeyboardDidLoad, tLRPC$Message, topicKey);
    }

    public void putBotInfo(final long j, final TLRPC$BotInfo tLRPC$BotInfo) {
        if (tLRPC$BotInfo == null) {
            return;
        }
        HashMap<String, TLRPC$BotInfo> hashMap = this.botInfos;
        hashMap.put(tLRPC$BotInfo.user_id + "_" + j, tLRPC$BotInfo);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda99
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putBotInfo$189(tLRPC$BotInfo, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putBotInfo$189(TLRPC$BotInfo tLRPC$BotInfo, long j) {
        try {
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO bot_info_v2 VALUES(?, ?, ?)");
            executeFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$BotInfo.getObjectSize());
            tLRPC$BotInfo.serializeToStream(nativeByteBuffer);
            executeFast.bindLong(1, tLRPC$BotInfo.user_id);
            executeFast.bindLong(2, j);
            executeFast.bindByteBuffer(3, nativeByteBuffer);
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public void updateBotInfo(final long j, final TLRPC$TL_updateBotCommands tLRPC$TL_updateBotCommands) {
        HashMap<String, TLRPC$BotInfo> hashMap = this.botInfos;
        TLRPC$BotInfo tLRPC$BotInfo = hashMap.get(tLRPC$TL_updateBotCommands.bot_id + "_" + j);
        if (tLRPC$BotInfo != null) {
            tLRPC$BotInfo.commands = tLRPC$TL_updateBotCommands.commands;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.botInfoDidLoad, tLRPC$BotInfo, 0);
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda123
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$updateBotInfo$190(tLRPC$TL_updateBotCommands, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateBotInfo$190(TLRPC$TL_updateBotCommands tLRPC$TL_updateBotCommands, long j) {
        try {
            TLRPC$BotInfo loadBotInfoInternal = loadBotInfoInternal(tLRPC$TL_updateBotCommands.bot_id, j);
            if (loadBotInfoInternal != null) {
                loadBotInfoInternal.commands = tLRPC$TL_updateBotCommands.commands;
            }
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO bot_info_v2 VALUES(?, ?, ?)");
            executeFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(loadBotInfoInternal.getObjectSize());
            loadBotInfoInternal.serializeToStream(nativeByteBuffer);
            executeFast.bindLong(1, loadBotInfoInternal.user_id);
            executeFast.bindLong(2, j);
            executeFast.bindByteBuffer(3, nativeByteBuffer);
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public HashMap<String, TLRPC$TL_availableReaction> getReactionsMap() {
        return this.reactionsMap;
    }

    public String getDoubleTapReaction() {
        if (SharedConfig.isReactionsEnabled && getForkCommonController().isQuickReactionEnabled()) {
            String str = this.doubleTapReaction;
            if (str != null) {
                return str;
            }
            if (!getReactionsList().isEmpty()) {
                String string = MessagesController.getEmojiSettings(this.currentAccount).getString("reaction_on_double_tap", null);
                if (string != null && (getReactionsMap().get(string) != null || string.startsWith("animated_"))) {
                    this.doubleTapReaction = string;
                    return string;
                }
                return getReactionsList().get(0).reaction;
            }
        }
        return null;
    }

    public void setDoubleTapReaction(String str) {
        MessagesController.getEmojiSettings(this.currentAccount).edit().putString("reaction_on_double_tap", str).apply();
        this.doubleTapReaction = str;
    }

    public List<TLRPC$TL_availableReaction> getEnabledReactionsList() {
        return this.enabledReactionsList;
    }

    public void uploadRingtone(String str) {
        if (this.ringtoneUploaderHashMap.containsKey(str)) {
            return;
        }
        this.ringtoneUploaderHashMap.put(str, new RingtoneUploader(str, this.currentAccount));
        this.ringtoneDataStore.addUploadingTone(str);
    }

    public void onRingtoneUploaded(String str, TLRPC$Document tLRPC$Document, boolean z) {
        this.ringtoneUploaderHashMap.remove(str);
        this.ringtoneDataStore.onRingtoneUploaded(str, tLRPC$Document, z);
    }

    public void checkRingtones(boolean z) {
        this.ringtoneDataStore.loadUserRingtones(z);
    }

    public boolean saveToRingtones(final TLRPC$Document tLRPC$Document) {
        if (tLRPC$Document == null) {
            return false;
        }
        if (this.ringtoneDataStore.contains(tLRPC$Document.f1610id)) {
            return true;
        }
        if (tLRPC$Document.size > MessagesController.getInstance(this.currentAccount).ringtoneSizeMax) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 4, LocaleController.formatString("TooLargeError", C3632R.string.TooLargeError, new Object[0]), LocaleController.formatString("ErrorRingtoneSizeTooBig", C3632R.string.ErrorRingtoneSizeTooBig, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).ringtoneSizeMax / 1024)));
            return false;
        }
        for (int i = 0; i < tLRPC$Document.attributes.size(); i++) {
            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i);
            if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) && tLRPC$DocumentAttribute.duration > MessagesController.getInstance(this.currentAccount).ringtoneDurationMax) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 4, LocaleController.formatString("TooLongError", C3632R.string.TooLongError, new Object[0]), LocaleController.formatString("ErrorRingtoneDurationTooLong", C3632R.string.ErrorRingtoneDurationTooLong, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).ringtoneDurationMax)));
                return false;
            }
        }
        TLRPC$TL_account_saveRingtone tLRPC$TL_account_saveRingtone = new TLRPC$TL_account_saveRingtone();
        TLRPC$TL_inputDocument tLRPC$TL_inputDocument = new TLRPC$TL_inputDocument();
        tLRPC$TL_account_saveRingtone.f1637id = tLRPC$TL_inputDocument;
        tLRPC$TL_inputDocument.f1618id = tLRPC$Document.f1610id;
        tLRPC$TL_inputDocument.file_reference = tLRPC$Document.file_reference;
        tLRPC$TL_inputDocument.access_hash = tLRPC$Document.access_hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_account_saveRingtone, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda212
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$saveToRingtones$192(tLRPC$Document, tLObject, tLRPC$TL_error);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToRingtones$192(final TLRPC$Document tLRPC$Document, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda96
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$saveToRingtones$191(tLObject, tLRPC$Document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToRingtones$191(TLObject tLObject, TLRPC$Document tLRPC$Document) {
        if (tLObject != null) {
            if (tLObject instanceof TLRPC$TL_account_savedRingtoneConverted) {
                this.ringtoneDataStore.addTone(((TLRPC$TL_account_savedRingtoneConverted) tLObject).document);
            } else {
                this.ringtoneDataStore.addTone(tLRPC$Document);
            }
        }
    }

    public void preloadPremiumPreviewStickers() {
        if (this.previewStickersLoading || !this.premiumPreviewStickers.isEmpty()) {
            int i = 0;
            while (i < Math.min(this.premiumPreviewStickers.size(), 3)) {
                ArrayList<TLRPC$Document> arrayList = this.premiumPreviewStickers;
                TLRPC$Document tLRPC$Document = arrayList.get(i == 2 ? arrayList.size() - 1 : i);
                if (MessageObject.isPremiumSticker(tLRPC$Document)) {
                    ImageReceiver imageReceiver = new ImageReceiver();
                    imageReceiver.setAllowLoadingOnAttachedOnly(false);
                    imageReceiver.setImage(ImageLocation.getForDocument(tLRPC$Document), null, null, "webp", null, 1);
                    ImageLoader.getInstance().loadImageForImageReceiver(imageReceiver);
                    ImageReceiver imageReceiver2 = new ImageReceiver();
                    imageReceiver2.setAllowLoadingOnAttachedOnly(false);
                    imageReceiver2.setImage(ImageLocation.getForDocument(MessageObject.getPremiumStickerAnimation(tLRPC$Document), tLRPC$Document), (String) null, (ImageLocation) null, (String) null, "tgs", (Object) null, 1);
                    ImageLoader.getInstance().loadImageForImageReceiver(imageReceiver2);
                }
                i++;
            }
            return;
        }
        TLRPC$TL_messages_getStickers tLRPC$TL_messages_getStickers = new TLRPC$TL_messages_getStickers();
        tLRPC$TL_messages_getStickers.emoticon = Emoji.fixEmoji("⭐") + Emoji.fixEmoji("⭐");
        tLRPC$TL_messages_getStickers.hash = 0L;
        this.previewStickersLoading = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getStickers, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda183
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$preloadPremiumPreviewStickers$194(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadPremiumPreviewStickers$194(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda113
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$preloadPremiumPreviewStickers$193(tLRPC$TL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadPremiumPreviewStickers$193(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
        if (tLRPC$TL_error != null) {
            return;
        }
        this.previewStickersLoading = false;
        this.premiumPreviewStickers.clear();
        this.premiumPreviewStickers.addAll(((TLRPC$TL_messages_stickers) tLObject).stickers);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.premiumStickersPreviewLoaded, new Object[0]);
    }

    public void checkAllMedia(boolean z) {
        if (z) {
            this.reactionsUpdateDate = 0;
            int[] iArr = this.loadFeaturedDate;
            iArr[0] = 0;
            iArr[1] = 0;
        }
        loadRecents(2, false, true, false);
        loadRecents(3, false, true, false);
        loadRecents(7, false, false, true);
        checkFeaturedStickers();
        checkFeaturedEmoji();
        checkReactions();
        checkMenuBots(true);
        checkPremiumPromo();
        checkPremiumGiftStickers();
        checkGenericAnimations();
    }

    public void moveStickerSetToTop(long j, boolean z, boolean z2) {
        int i = z ? 5 : z2 ? 1 : 0;
        ArrayList<TLRPC$TL_messages_stickerSet> stickerSets = getStickerSets(i);
        if (stickerSets != null) {
            for (int i2 = 0; i2 < stickerSets.size(); i2++) {
                if (stickerSets.get(i2).set.f1636id == j) {
                    stickerSets.remove(i2);
                    stickerSets.add(0, stickerSets.get(i2));
                    getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersDidLoad, Integer.valueOf(i), Boolean.FALSE);
                    return;
                }
            }
        }
    }

    public void applyAttachMenuBot(TLRPC$TL_attachMenuBotsBot tLRPC$TL_attachMenuBotsBot) {
        this.attachMenuBots.bots.add(tLRPC$TL_attachMenuBotsBot.bot);
        loadAttachMenuBots(false, true);
    }

    public boolean botInAttachMenu(long j) {
        for (int i = 0; i < this.attachMenuBots.bots.size(); i++) {
            if (this.attachMenuBots.bots.get(i).bot_id == j) {
                return true;
            }
        }
        return false;
    }

    public TLRPC$TL_attachMenuBot findBotInAttachMenu(long j) {
        for (int i = 0; i < this.attachMenuBots.bots.size(); i++) {
            if (this.attachMenuBots.bots.get(i).bot_id == j) {
                return this.attachMenuBots.bots.get(i);
            }
        }
        return null;
    }

    /* loaded from: classes4.dex */
    public static class KeywordResult {
        public String emoji;
        public String keyword;

        public KeywordResult() {
        }

        public KeywordResult(String str, String str2) {
            this.emoji = str;
            this.keyword = str2;
        }
    }

    public void fetchNewEmojiKeywords(String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (final String str : strArr) {
            if (TextUtils.isEmpty(str) || this.currentFetchingEmoji.get(str) != null) {
                return;
            }
            this.currentFetchingEmoji.put(str, Boolean.TRUE);
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda64
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$fetchNewEmojiKeywords$200(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$200(final java.lang.String r10) {
        /*
            r9 = this;
            r0 = -1
            r1 = 0
            r2 = 0
            org.telegram.messenger.MessagesStorage r4 = r9.getMessagesStorage()     // Catch: java.lang.Exception -> L33
            org.telegram.SQLite.SQLiteDatabase r4 = r4.getDatabase()     // Catch: java.lang.Exception -> L33
            java.lang.String r5 = "SELECT alias, version, date FROM emoji_keywords_info_v2 WHERE lang = ?"
            r6 = 1
            java.lang.Object[] r7 = new java.lang.Object[r6]     // Catch: java.lang.Exception -> L33
            r8 = 0
            r7[r8] = r10     // Catch: java.lang.Exception -> L33
            org.telegram.SQLite.SQLiteCursor r4 = r4.queryFinalized(r5, r7)     // Catch: java.lang.Exception -> L33
            boolean r5 = r4.next()     // Catch: java.lang.Exception -> L33
            if (r5 == 0) goto L2c
            java.lang.String r1 = r4.stringValue(r8)     // Catch: java.lang.Exception -> L33
            int r5 = r4.intValue(r6)     // Catch: java.lang.Exception -> L33
            r6 = 2
            long r2 = r4.longValue(r6)     // Catch: java.lang.Exception -> L31
            goto L2d
        L2c:
            r5 = r0
        L2d:
            r4.dispose()     // Catch: java.lang.Exception -> L31
            goto L38
        L31:
            r4 = move-exception
            goto L35
        L33:
            r4 = move-exception
            r5 = r0
        L35:
            org.telegram.messenger.FileLog.m99e(r4)
        L38:
            boolean r4 = org.telegram.messenger.BuildVars.DEBUG_VERSION
            if (r4 != 0) goto L55
            long r6 = java.lang.System.currentTimeMillis()
            long r6 = r6 - r2
            long r2 = java.lang.Math.abs(r6)
            r6 = 3600000(0x36ee80, double:1.7786363E-317)
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 >= 0) goto L55
            org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda59 r0 = new org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda59
            r0.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r0)
            return
        L55:
            if (r5 != r0) goto L5f
            org.telegram.tgnet.TLRPC$TL_messages_getEmojiKeywords r0 = new org.telegram.tgnet.TLRPC$TL_messages_getEmojiKeywords
            r0.<init>()
            r0.lang_code = r10
            goto L68
        L5f:
            org.telegram.tgnet.TLRPC$TL_messages_getEmojiKeywordsDifference r0 = new org.telegram.tgnet.TLRPC$TL_messages_getEmojiKeywordsDifference
            r0.<init>()
            r0.lang_code = r10
            r0.from_version = r5
        L68:
            org.telegram.tgnet.ConnectionsManager r2 = r9.getConnectionsManager()
            org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda188 r3 = new org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda188
            r3.<init>()
            r2.sendRequest(r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$fetchNewEmojiKeywords$200(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$195(String str) {
        this.currentFetchingEmoji.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$199(int i, String str, final String str2, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            TLRPC$TL_emojiKeywordsDifference tLRPC$TL_emojiKeywordsDifference = (TLRPC$TL_emojiKeywordsDifference) tLObject;
            if (i != -1 && !tLRPC$TL_emojiKeywordsDifference.lang_code.equals(str)) {
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda60
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDataController.this.lambda$fetchNewEmojiKeywords$197(str2);
                    }
                });
                return;
            } else {
                putEmojiKeywords(str2, tLRPC$TL_emojiKeywordsDifference);
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$fetchNewEmojiKeywords$198(str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$197(final String str) {
        try {
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("DELETE FROM emoji_keywords_info_v2 WHERE lang = ?");
            executeFast.bindString(1, str);
            executeFast.step();
            executeFast.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$fetchNewEmojiKeywords$196(str);
                }
            });
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$196(String str) {
        this.currentFetchingEmoji.remove(str);
        fetchNewEmojiKeywords(new String[]{str});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchNewEmojiKeywords$198(String str) {
        this.currentFetchingEmoji.remove(str);
    }

    private void putEmojiKeywords(final String str, final TLRPC$TL_emojiKeywordsDifference tLRPC$TL_emojiKeywordsDifference) {
        if (tLRPC$TL_emojiKeywordsDifference == null) {
            return;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda111
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$putEmojiKeywords$202(tLRPC$TL_emojiKeywordsDifference, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putEmojiKeywords$202(TLRPC$TL_emojiKeywordsDifference tLRPC$TL_emojiKeywordsDifference, final String str) {
        try {
            if (!tLRPC$TL_emojiKeywordsDifference.keywords.isEmpty()) {
                SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("REPLACE INTO emoji_keywords_v2 VALUES(?, ?, ?)");
                SQLitePreparedStatement executeFast2 = getMessagesStorage().getDatabase().executeFast("DELETE FROM emoji_keywords_v2 WHERE lang = ? AND keyword = ? AND emoji = ?");
                getMessagesStorage().getDatabase().beginTransaction();
                int size = tLRPC$TL_emojiKeywordsDifference.keywords.size();
                for (int i = 0; i < size; i++) {
                    TLRPC$EmojiKeyword tLRPC$EmojiKeyword = tLRPC$TL_emojiKeywordsDifference.keywords.get(i);
                    if (tLRPC$EmojiKeyword instanceof TLRPC$TL_emojiKeyword) {
                        TLRPC$TL_emojiKeyword tLRPC$TL_emojiKeyword = (TLRPC$TL_emojiKeyword) tLRPC$EmojiKeyword;
                        String lowerCase = tLRPC$TL_emojiKeyword.keyword.toLowerCase();
                        int size2 = tLRPC$TL_emojiKeyword.emoticons.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            executeFast.requery();
                            executeFast.bindString(1, tLRPC$TL_emojiKeywordsDifference.lang_code);
                            executeFast.bindString(2, lowerCase);
                            executeFast.bindString(3, tLRPC$TL_emojiKeyword.emoticons.get(i2));
                            executeFast.step();
                        }
                    } else if (tLRPC$EmojiKeyword instanceof TLRPC$TL_emojiKeywordDeleted) {
                        TLRPC$TL_emojiKeywordDeleted tLRPC$TL_emojiKeywordDeleted = (TLRPC$TL_emojiKeywordDeleted) tLRPC$EmojiKeyword;
                        String lowerCase2 = tLRPC$TL_emojiKeywordDeleted.keyword.toLowerCase();
                        int size3 = tLRPC$TL_emojiKeywordDeleted.emoticons.size();
                        for (int i3 = 0; i3 < size3; i3++) {
                            executeFast2.requery();
                            executeFast2.bindString(1, tLRPC$TL_emojiKeywordsDifference.lang_code);
                            executeFast2.bindString(2, lowerCase2);
                            executeFast2.bindString(3, tLRPC$TL_emojiKeywordDeleted.emoticons.get(i3));
                            executeFast2.step();
                        }
                    }
                }
                getMessagesStorage().getDatabase().commitTransaction();
                executeFast.dispose();
                executeFast2.dispose();
            }
            SQLitePreparedStatement executeFast3 = getMessagesStorage().getDatabase().executeFast("REPLACE INTO emoji_keywords_info_v2 VALUES(?, ?, ?, ?)");
            executeFast3.bindString(1, str);
            executeFast3.bindString(2, tLRPC$TL_emojiKeywordsDifference.lang_code);
            executeFast3.bindInteger(3, tLRPC$TL_emojiKeywordsDifference.version);
            executeFast3.bindLong(4, System.currentTimeMillis());
            executeFast3.step();
            executeFast3.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda61
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$putEmojiKeywords$201(str);
                }
            });
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putEmojiKeywords$201(String str) {
        this.currentFetchingEmoji.remove(str);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newEmojiSuggestionsAvailable, str);
    }

    public void getAnimatedEmojiByKeywords(final String str, final Utilities.Callback<ArrayList<Long>> callback) {
        if (str == null) {
            if (callback != null) {
                callback.run(new ArrayList<>());
                return;
            }
            return;
        }
        final ArrayList<TLRPC$TL_messages_stickerSet> stickerSets = getStickerSets(5);
        final ArrayList<TLRPC$StickerSetCovered> featuredEmojiSets = getFeaturedEmojiSets();
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.lambda$getAnimatedEmojiByKeywords$203(str, stickerSets, featuredEmojiSets, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAnimatedEmojiByKeywords$203(String str, ArrayList arrayList, ArrayList arrayList2, Utilities.Callback callback) {
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        String lowerCase = str.toLowerCase();
        for (int i = 0; i < arrayList.size(); i++) {
            if (((TLRPC$TL_messages_stickerSet) arrayList.get(i)).keywords != null) {
                ArrayList<TLRPC$TL_stickerKeyword> arrayList5 = ((TLRPC$TL_messages_stickerSet) arrayList.get(i)).keywords;
                for (int i2 = 0; i2 < arrayList5.size(); i2++) {
                    for (int i3 = 0; i3 < arrayList5.get(i2).keyword.size(); i3++) {
                        String str2 = arrayList5.get(i2).keyword.get(i3);
                        if (lowerCase.equals(str2)) {
                            arrayList3.add(Long.valueOf(arrayList5.get(i2).document_id));
                        } else if (lowerCase.contains(str2) || str2.contains(lowerCase)) {
                            arrayList4.add(Long.valueOf(arrayList5.get(i2).document_id));
                        }
                    }
                }
            }
        }
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            if ((arrayList2.get(i4) instanceof TLRPC$TL_stickerSetFullCovered) && ((TLRPC$TL_stickerSetFullCovered) arrayList2.get(i4)).keywords != null) {
                ArrayList<TLRPC$TL_stickerKeyword> arrayList6 = ((TLRPC$TL_stickerSetFullCovered) arrayList2.get(i4)).keywords;
                for (int i5 = 0; i5 < arrayList6.size(); i5++) {
                    for (int i6 = 0; i6 < arrayList6.get(i5).keyword.size(); i6++) {
                        String str3 = arrayList6.get(i5).keyword.get(i6);
                        if (lowerCase.equals(str3)) {
                            arrayList3.add(Long.valueOf(arrayList6.get(i5).document_id));
                        } else if (lowerCase.contains(str3) || str3.contains(lowerCase)) {
                            arrayList4.add(Long.valueOf(arrayList6.get(i5).document_id));
                        }
                    }
                }
            }
        }
        arrayList3.addAll(arrayList4);
        if (callback != null) {
            callback.run(arrayList3);
        }
    }

    public void getEmojiSuggestions(String[] strArr, String str, boolean z, KeywordResultCallback keywordResultCallback, boolean z2) {
        getEmojiSuggestions(strArr, str, z, keywordResultCallback, null, z2, false, false, null);
    }

    public void getEmojiSuggestions(String[] strArr, String str, boolean z, KeywordResultCallback keywordResultCallback, CountDownLatch countDownLatch, boolean z2) {
        getEmojiSuggestions(strArr, str, z, keywordResultCallback, countDownLatch, z2, false, false, null);
    }

    public void getEmojiSuggestions(String[] strArr, String str, boolean z, KeywordResultCallback keywordResultCallback, CountDownLatch countDownLatch, boolean z2, boolean z3, boolean z4, Integer num) {
        getEmojiSuggestions(strArr, str, z, keywordResultCallback, countDownLatch, z2, z3, z4, false, num, false);
    }

    public void getEmojiSuggestions(final String[] strArr, final String str, final boolean z, final KeywordResultCallback keywordResultCallback, final CountDownLatch countDownLatch, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final Integer num, final boolean z6) {
        if (keywordResultCallback == null) {
            return;
        }
        if (TextUtils.isEmpty(str) || strArr == null) {
            keywordResultCallback.run(new ArrayList<>(), null);
            return;
        }
        final ArrayList arrayList = new ArrayList(Emoji.recentEmoji);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda142
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$getEmojiSuggestions$209(strArr, keywordResultCallback, z4, str, z, arrayList, z2, num, z3, z5, z6, countDownLatch);
            }
        });
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0188  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getEmojiSuggestions$209(final java.lang.String[] r17, final org.telegram.messenger.MediaDataController.KeywordResultCallback r18, boolean r19, java.lang.String r20, boolean r21, final java.util.ArrayList r22, boolean r23, java.lang.Integer r24, boolean r25, boolean r26, boolean r27, final java.util.concurrent.CountDownLatch r28) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$getEmojiSuggestions$209(java.lang.String[], org.telegram.messenger.MediaDataController$KeywordResultCallback, boolean, java.lang.String, boolean, java.util.ArrayList, boolean, java.lang.Integer, boolean, boolean, boolean, java.util.concurrent.CountDownLatch):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getEmojiSuggestions$204(String[] strArr, KeywordResultCallback keywordResultCallback, ArrayList arrayList) {
        for (String str : strArr) {
            if (this.currentFetchingEmoji.get(str) != null) {
                return;
            }
        }
        keywordResultCallback.run(arrayList, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getEmojiSuggestions$205(ArrayList arrayList, KeywordResult keywordResult, KeywordResult keywordResult2) {
        int indexOf = arrayList.indexOf(keywordResult.emoji);
        if (indexOf < 0) {
            indexOf = Integer.MAX_VALUE;
        }
        int indexOf2 = arrayList.indexOf(keywordResult2.emoji);
        int i = indexOf2 >= 0 ? indexOf2 : Integer.MAX_VALUE;
        if (indexOf < i) {
            return -1;
        }
        if (indexOf > i) {
            return 1;
        }
        int length = keywordResult.keyword.length();
        int length2 = keywordResult2.keyword.length();
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getEmojiSuggestions$207(CountDownLatch countDownLatch, final KeywordResultCallback keywordResultCallback, final ArrayList arrayList, final String str) {
        if (countDownLatch != null) {
            keywordResultCallback.run(arrayList, str);
            countDownLatch.countDown();
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.KeywordResultCallback.this.run(arrayList, str);
            }
        });
    }

    public void fillWithAnimatedEmoji(final ArrayList<KeywordResult> arrayList, final Integer num, final boolean z, final boolean z2, boolean z3, final Runnable runnable) {
        if (arrayList == null || arrayList.isEmpty()) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        final ArrayList[] arrayListArr = {getStickerSets(5)};
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$fillWithAnimatedEmoji$210(num, arrayList, z2, z, arrayListArr, runnable);
            }
        };
        if ((arrayListArr[0] == null || arrayListArr[0].isEmpty()) && !this.triedLoadingEmojipacks) {
            this.triedLoadingEmojipacks = true;
            final boolean[] zArr = new boolean[1];
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda147
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$fillWithAnimatedEmoji$212(zArr, arrayListArr, runnable2);
                }
            });
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda156
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.lambda$fillWithAnimatedEmoji$213(zArr, runnable2);
                }
            }, 900L);
            return;
        }
        runnable2.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x026c, code lost:
        if (r2.equals(r10) != false) goto L245;
     */
    /* JADX WARN: Removed duplicated region for block: B:276:0x00fe A[EDGE_INSN: B:276:0x00fe->B:65:0x00fe ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f7 A[LOOP:1: B:40:0x00a4->B:63:0x00f7, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$fillWithAnimatedEmoji$210(java.lang.Integer r21, java.util.ArrayList r22, boolean r23, boolean r24, java.util.ArrayList[] r25, java.lang.Runnable r26) {
        /*
            Method dump skipped, instructions count: 1044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$fillWithAnimatedEmoji$210(java.lang.Integer, java.util.ArrayList, boolean, boolean, java.util.ArrayList[], java.lang.Runnable):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillWithAnimatedEmoji$212(final boolean[] zArr, final ArrayList[] arrayListArr, final Runnable runnable) {
        loadStickers(5, true, false, false, new Utilities.Callback() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda173
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MediaDataController.lambda$fillWithAnimatedEmoji$211(zArr, arrayListArr, runnable, (ArrayList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fillWithAnimatedEmoji$211(boolean[] zArr, ArrayList[] arrayListArr, Runnable runnable, ArrayList arrayList) {
        if (zArr[0]) {
            return;
        }
        arrayListArr[0] = arrayList;
        runnable.run();
        zArr[0] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$fillWithAnimatedEmoji$213(boolean[] zArr, Runnable runnable) {
        if (zArr[0]) {
            return;
        }
        runnable.run();
        zArr[0] = true;
    }

    public void loadEmojiThemes() {
        Context context = ApplicationLoader.applicationContext;
        SharedPreferences sharedPreferences = context.getSharedPreferences("emojithemes_config_" + this.currentAccount, 0);
        int i = sharedPreferences.getInt(NotificationBadge.NewHtcHomeBadger.COUNT, 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ChatThemeBottomSheet.ChatThemeItem(EmojiThemes.createHomePreviewTheme(this.currentAccount)));
        for (int i2 = 0; i2 < i; i2++) {
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(sharedPreferences.getString("theme_" + i2, "")));
            try {
                EmojiThemes createPreviewFullTheme = EmojiThemes.createPreviewFullTheme(this.currentAccount, TLRPC$Theme.TLdeserialize(serializedData, serializedData.readInt32(true), true));
                if (createPreviewFullTheme.items.size() >= 4) {
                    arrayList.add(new ChatThemeBottomSheet.ChatThemeItem(createPreviewFullTheme));
                }
                ChatThemeController.chatThemeQueue.postRunnable(new RunnableC36132(arrayList));
            } catch (Throwable th) {
                FileLog.m99e(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaDataController$2 */
    /* loaded from: classes4.dex */
    public class RunnableC36132 implements Runnable {
        final /* synthetic */ ArrayList val$previewItems;

        RunnableC36132(ArrayList arrayList) {
            this.val$previewItems = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.val$previewItems.size(); i++) {
                if (this.val$previewItems.get(i) != null && ((ChatThemeBottomSheet.ChatThemeItem) this.val$previewItems.get(i)).chatTheme != null) {
                    ((ChatThemeBottomSheet.ChatThemeItem) this.val$previewItems.get(i)).chatTheme.loadPreviewColors(0);
                }
            }
            final ArrayList arrayList = this.val$previewItems;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.RunnableC36132.this.lambda$run$0(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ArrayList arrayList) {
            MediaDataController.this.defaultEmojiThemes.clear();
            MediaDataController.this.defaultEmojiThemes.addAll(arrayList);
        }
    }

    public void generateEmojiPreviewThemes(ArrayList<TLRPC$TL_theme> arrayList, int i) {
        Context context = ApplicationLoader.applicationContext;
        SharedPreferences.Editor edit = context.getSharedPreferences("emojithemes_config_" + i, 0).edit();
        edit.putInt(NotificationBadge.NewHtcHomeBadger.COUNT, arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$TL_theme tLRPC$TL_theme = arrayList.get(i2);
            SerializedData serializedData = new SerializedData(tLRPC$TL_theme.getObjectSize());
            tLRPC$TL_theme.serializeToStream(serializedData);
            edit.putString("theme_" + i2, Utilities.bytesToHex(serializedData.toByteArray()));
        }
        edit.apply();
        if (!arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new ChatThemeBottomSheet.ChatThemeItem(EmojiThemes.createHomePreviewTheme(i)));
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                EmojiThemes createPreviewFullTheme = EmojiThemes.createPreviewFullTheme(i, arrayList.get(i3));
                ChatThemeBottomSheet.ChatThemeItem chatThemeItem = new ChatThemeBottomSheet.ChatThemeItem(createPreviewFullTheme);
                if (createPreviewFullTheme.items.size() >= 4) {
                    arrayList2.add(chatThemeItem);
                }
            }
            ChatThemeController.chatThemeQueue.postRunnable(new RunnableC36143(arrayList2, i));
            return;
        }
        this.defaultEmojiThemes.clear();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiPreviewThemesChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.MediaDataController$3 */
    /* loaded from: classes4.dex */
    public class RunnableC36143 implements Runnable {
        final /* synthetic */ int val$currentAccount;
        final /* synthetic */ ArrayList val$previewItems;

        RunnableC36143(ArrayList arrayList, int i) {
            this.val$previewItems = arrayList;
            this.val$currentAccount = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.val$previewItems.size(); i++) {
                ((ChatThemeBottomSheet.ChatThemeItem) this.val$previewItems.get(i)).chatTheme.loadPreviewColors(this.val$currentAccount);
            }
            final ArrayList arrayList = this.val$previewItems;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.RunnableC36143.this.lambda$run$0(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ArrayList arrayList) {
            MediaDataController.this.defaultEmojiThemes.clear();
            MediaDataController.this.defaultEmojiThemes.addAll(arrayList);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiPreviewThemesChanged, new Object[0]);
        }
    }

    public ArrayList<TLRPC$EmojiStatus> getDefaultEmojiStatuses() {
        if (!this.emojiStatusesFromCacheFetched[1]) {
            fetchEmojiStatuses(1, true);
        } else if (this.emojiStatuses[1] == null || (this.emojiStatusesFetchDate[1] != null && (System.currentTimeMillis() / 1000) - this.emojiStatusesFetchDate[1].longValue() > 1800)) {
            fetchEmojiStatuses(1, false);
        }
        return this.emojiStatuses[1];
    }

    public ArrayList<TLRPC$EmojiStatus> getRecentEmojiStatuses() {
        if (!this.emojiStatusesFromCacheFetched[0]) {
            fetchEmojiStatuses(0, true);
        } else if (this.emojiStatuses[0] == null || (this.emojiStatusesFetchDate[0] != null && (System.currentTimeMillis() / 1000) - this.emojiStatusesFetchDate[0].longValue() > 1800)) {
            fetchEmojiStatuses(0, false);
        }
        return this.emojiStatuses[0];
    }

    public ArrayList<TLRPC$EmojiStatus> clearRecentEmojiStatuses() {
        ArrayList<TLRPC$EmojiStatus>[] arrayListArr = this.emojiStatuses;
        if (arrayListArr[0] != null) {
            arrayListArr[0].clear();
        }
        this.emojiStatusesHash[0] = 0;
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$clearRecentEmojiStatuses$214();
            }
        });
        return this.emojiStatuses[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentEmojiStatuses$214() {
        try {
            getMessagesStorage().getDatabase().executeFast("DELETE FROM emoji_statuses WHERE type = 0").stepThis().dispose();
        } catch (Exception unused) {
        }
    }

    public void pushRecentEmojiStatus(TLRPC$EmojiStatus tLRPC$EmojiStatus) {
        ArrayList<TLRPC$EmojiStatus>[] arrayListArr;
        if (this.emojiStatuses[0] != null) {
            if (tLRPC$EmojiStatus instanceof TLRPC$TL_emojiStatus) {
                long j = ((TLRPC$TL_emojiStatus) tLRPC$EmojiStatus).document_id;
                int i = 0;
                while (i < this.emojiStatuses[0].size()) {
                    if ((this.emojiStatuses[0].get(i) instanceof TLRPC$TL_emojiStatus) && ((TLRPC$TL_emojiStatus) this.emojiStatuses[0].get(i)).document_id == j) {
                        this.emojiStatuses[0].remove(i);
                        i--;
                    }
                    i++;
                }
            }
            this.emojiStatuses[0].add(0, tLRPC$EmojiStatus);
            while (this.emojiStatuses[0].size() > 50) {
                this.emojiStatuses[0].remove(arrayListArr[0].size() - 1);
            }
            TLRPC$TL_account_emojiStatuses tLRPC$TL_account_emojiStatuses = new TLRPC$TL_account_emojiStatuses();
            tLRPC$TL_account_emojiStatuses.hash = this.emojiStatusesHash[0];
            tLRPC$TL_account_emojiStatuses.statuses = this.emojiStatuses[0];
            updateEmojiStatuses(0, tLRPC$TL_account_emojiStatuses);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void fetchEmojiStatuses(final int i, boolean z) {
        TLRPC$TL_account_getDefaultEmojiStatuses tLRPC$TL_account_getDefaultEmojiStatuses;
        boolean[] zArr = this.emojiStatusesFetching;
        if (zArr[i]) {
            return;
        }
        zArr[i] = true;
        if (z) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$fetchEmojiStatuses$216(i);
                }
            });
            return;
        }
        if (i == 0) {
            TLRPC$TL_account_getRecentEmojiStatuses tLRPC$TL_account_getRecentEmojiStatuses = new TLRPC$TL_account_getRecentEmojiStatuses();
            tLRPC$TL_account_getRecentEmojiStatuses.hash = this.emojiStatusesHash[i];
            tLRPC$TL_account_getDefaultEmojiStatuses = tLRPC$TL_account_getRecentEmojiStatuses;
        } else {
            TLRPC$TL_account_getDefaultEmojiStatuses tLRPC$TL_account_getDefaultEmojiStatuses2 = new TLRPC$TL_account_getDefaultEmojiStatuses();
            tLRPC$TL_account_getDefaultEmojiStatuses2.hash = this.emojiStatusesHash[i];
            tLRPC$TL_account_getDefaultEmojiStatuses = tLRPC$TL_account_getDefaultEmojiStatuses2;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_account_getDefaultEmojiStatuses, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda187
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$fetchEmojiStatuses$218(i, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$fetchEmojiStatuses$216(int r9) {
        /*
            r8 = this;
            r0 = 1
            r1 = 0
            org.telegram.messenger.MessagesStorage r2 = r8.getMessagesStorage()     // Catch: java.lang.Exception -> L64
            org.telegram.SQLite.SQLiteDatabase r2 = r2.getDatabase()     // Catch: java.lang.Exception -> L64
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L64
            r3.<init>()     // Catch: java.lang.Exception -> L64
            java.lang.String r4 = "SELECT data FROM emoji_statuses WHERE type = "
            r3.append(r4)     // Catch: java.lang.Exception -> L64
            r3.append(r9)     // Catch: java.lang.Exception -> L64
            java.lang.String r4 = " LIMIT 1"
            r3.append(r4)     // Catch: java.lang.Exception -> L64
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L64
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L64
            org.telegram.SQLite.SQLiteCursor r2 = r2.queryFinalized(r3, r4)     // Catch: java.lang.Exception -> L64
            boolean r3 = r2.next()     // Catch: java.lang.Exception -> L64
            if (r3 == 0) goto L5d
            int r3 = r2.getColumnCount()     // Catch: java.lang.Exception -> L64
            if (r3 <= 0) goto L5d
            boolean r3 = r2.isNull(r1)     // Catch: java.lang.Exception -> L64
            if (r3 != 0) goto L5d
            org.telegram.tgnet.NativeByteBuffer r3 = r2.byteBufferValue(r1)     // Catch: java.lang.Exception -> L64
            if (r3 == 0) goto L5d
            int r4 = r3.readInt32(r1)     // Catch: java.lang.Exception -> L64
            org.telegram.tgnet.TLRPC$account_EmojiStatuses r4 = org.telegram.tgnet.TLRPC$account_EmojiStatuses.TLdeserialize(r3, r4, r1)     // Catch: java.lang.Exception -> L64
            boolean r5 = r4 instanceof org.telegram.tgnet.TLRPC$TL_account_emojiStatuses     // Catch: java.lang.Exception -> L64
            if (r5 == 0) goto L58
            long[] r5 = r8.emojiStatusesHash     // Catch: java.lang.Exception -> L64
            long r6 = r4.hash     // Catch: java.lang.Exception -> L64
            r5[r9] = r6     // Catch: java.lang.Exception -> L64
            java.util.ArrayList<org.telegram.tgnet.TLRPC$EmojiStatus>[] r5 = r8.emojiStatuses     // Catch: java.lang.Exception -> L64
            java.util.ArrayList<org.telegram.tgnet.TLRPC$EmojiStatus> r4 = r4.statuses     // Catch: java.lang.Exception -> L64
            r5[r9] = r4     // Catch: java.lang.Exception -> L64
            r4 = r0
            goto L59
        L58:
            r4 = r1
        L59:
            r3.reuse()     // Catch: java.lang.Exception -> L62
            goto L5e
        L5d:
            r4 = r1
        L5e:
            r2.dispose()     // Catch: java.lang.Exception -> L62
            goto L69
        L62:
            r2 = move-exception
            goto L66
        L64:
            r2 = move-exception
            r4 = r1
        L66:
            org.telegram.messenger.FileLog.m99e(r2)
        L69:
            boolean[] r2 = r8.emojiStatusesFromCacheFetched
            r2[r9] = r0
            boolean[] r0 = r8.emojiStatusesFetching
            r0[r9] = r1
            if (r4 == 0) goto L7c
            org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda21 r9 = new org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda21
            r9.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r9)
            goto L7f
        L7c:
            r8.fetchEmojiStatuses(r9, r1)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.lambda$fetchEmojiStatuses$216(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchEmojiStatuses$215() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentEmojiStatusesUpdate, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchEmojiStatuses$218(int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        this.emojiStatusesFetchDate[i] = Long.valueOf(System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC$TL_account_emojiStatusesNotModified) {
            this.emojiStatusesFetching[i] = false;
        } else if (tLObject instanceof TLRPC$TL_account_emojiStatuses) {
            TLRPC$TL_account_emojiStatuses tLRPC$TL_account_emojiStatuses = (TLRPC$TL_account_emojiStatuses) tLObject;
            this.emojiStatusesHash[i] = tLRPC$TL_account_emojiStatuses.hash;
            this.emojiStatuses[i] = tLRPC$TL_account_emojiStatuses.statuses;
            updateEmojiStatuses(i, tLRPC$TL_account_emojiStatuses);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataController.this.lambda$fetchEmojiStatuses$217();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchEmojiStatuses$217() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentEmojiStatusesUpdate, new Object[0]);
    }

    private void updateEmojiStatuses(final int i, final TLRPC$TL_account_emojiStatuses tLRPC$TL_account_emojiStatuses) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$updateEmojiStatuses$219(i, tLRPC$TL_account_emojiStatuses);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEmojiStatuses$219(int i, TLRPC$TL_account_emojiStatuses tLRPC$TL_account_emojiStatuses) {
        try {
            SQLiteDatabase database = getMessagesStorage().getDatabase();
            database.executeFast("DELETE FROM emoji_statuses WHERE type = " + i).stepThis().dispose();
            SQLitePreparedStatement executeFast = getMessagesStorage().getDatabase().executeFast("INSERT INTO emoji_statuses VALUES(?, ?)");
            executeFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$TL_account_emojiStatuses.getObjectSize());
            tLRPC$TL_account_emojiStatuses.serializeToStream(nativeByteBuffer);
            executeFast.bindByteBuffer(1, nativeByteBuffer);
            executeFast.bindInteger(2, i);
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
        this.emojiStatusesFetching[i] = false;
    }

    public ArrayList<TLRPC$Reaction> getRecentReactions() {
        return this.recentReactions;
    }

    public void clearRecentReactions() {
        this.recentReactions.clear();
        Context context = ApplicationLoader.applicationContext;
        context.getSharedPreferences("recent_reactions_" + this.currentAccount, 0).edit().clear().apply();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLObject() { // from class: org.telegram.tgnet.TLRPC$TL_messages_clearRecentReactions
            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
                return TLRPC$Bool.TLdeserialize(abstractSerializedData, i, z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(-1644236876);
            }
        }, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController.4
            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            }
        });
    }

    public ArrayList<TLRPC$Reaction> getTopReactions() {
        return this.topReactions;
    }

    public void loadRecentAndTopReactions(boolean z) {
        if (this.loadingRecentReactions || !this.recentReactions.isEmpty() || z) {
            return;
        }
        Context context = ApplicationLoader.applicationContext;
        final SharedPreferences sharedPreferences = context.getSharedPreferences("recent_reactions_" + this.currentAccount, 0);
        Context context2 = ApplicationLoader.applicationContext;
        final SharedPreferences sharedPreferences2 = context2.getSharedPreferences("top_reactions_" + this.currentAccount, 0);
        this.recentReactions.clear();
        this.topReactions.clear();
        this.recentReactions.addAll(loadReactionsFromPref(sharedPreferences));
        this.topReactions.addAll(loadReactionsFromPref(sharedPreferences2));
        this.loadingRecentReactions = true;
        TLRPC$TL_messages_getRecentReactions tLRPC$TL_messages_getRecentReactions = new TLRPC$TL_messages_getRecentReactions();
        tLRPC$TL_messages_getRecentReactions.hash = sharedPreferences.getLong("hash", 0L);
        tLRPC$TL_messages_getRecentReactions.limit = 50;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getRecentReactions, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda201
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadRecentAndTopReactions$220(sharedPreferences, tLObject, tLRPC$TL_error);
            }
        });
        TLRPC$TL_messages_getTopReactions tLRPC$TL_messages_getTopReactions = new TLRPC$TL_messages_getTopReactions();
        tLRPC$TL_messages_getTopReactions.hash = sharedPreferences2.getLong("hash", 0L);
        tLRPC$TL_messages_getTopReactions.limit = 100;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getTopReactions, new RequestDelegate() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda202
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaDataController.this.lambda$loadRecentAndTopReactions$221(sharedPreferences2, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecentAndTopReactions$220(SharedPreferences sharedPreferences, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            if (tLObject instanceof TLRPC$TL_messages_reactions) {
                TLRPC$TL_messages_reactions tLRPC$TL_messages_reactions = (TLRPC$TL_messages_reactions) tLObject;
                this.recentReactions.clear();
                this.recentReactions.addAll(tLRPC$TL_messages_reactions.reactions);
                saveReactionsToPref(sharedPreferences, tLRPC$TL_messages_reactions.hash, tLRPC$TL_messages_reactions.reactions);
            }
            boolean z = tLObject instanceof TLRPC$TL_messages_reactionsNotModified;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadRecentAndTopReactions$221(SharedPreferences sharedPreferences, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            if (tLObject instanceof TLRPC$TL_messages_reactions) {
                TLRPC$TL_messages_reactions tLRPC$TL_messages_reactions = (TLRPC$TL_messages_reactions) tLObject;
                this.topReactions.clear();
                this.topReactions.addAll(tLRPC$TL_messages_reactions.reactions);
                saveReactionsToPref(sharedPreferences, tLRPC$TL_messages_reactions.hash, tLRPC$TL_messages_reactions.reactions);
            }
            boolean z = tLObject instanceof TLRPC$TL_messages_reactionsNotModified;
        }
    }

    public static void saveReactionsToPref(SharedPreferences sharedPreferences, long j, ArrayList<? extends TLObject> arrayList) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putInt(NotificationBadge.NewHtcHomeBadger.COUNT, arrayList.size());
        edit.putLong("hash", j);
        for (int i = 0; i < arrayList.size(); i++) {
            TLObject tLObject = arrayList.get(i);
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            edit.putString("object_" + i, Utilities.bytesToHex(serializedData.toByteArray()));
        }
        edit.apply();
    }

    public static ArrayList<TLRPC$Reaction> loadReactionsFromPref(SharedPreferences sharedPreferences) {
        int i = sharedPreferences.getInt(NotificationBadge.NewHtcHomeBadger.COUNT, 0);
        ArrayList<TLRPC$Reaction> arrayList = new ArrayList<>(i);
        if (i > 0) {
            for (int i2 = 0; i2 < i; i2++) {
                SerializedData serializedData = new SerializedData(Utilities.hexToBytes(sharedPreferences.getString("object_" + i2, "")));
                try {
                    arrayList.add(TLRPC$Reaction.TLdeserialize(serializedData, serializedData.readInt32(true), true));
                } catch (Throwable th) {
                    FileLog.m99e(th);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadAvatarConstructor(final boolean r9) {
        /*
            r8 = this;
            android.content.Context r0 = org.telegram.messenger.ApplicationLoader.applicationContext
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "avatar_constructor"
            r1.append(r2)
            int r2 = r8.currentAccount
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            r1 = 0
            r3 = 0
            if (r9 == 0) goto L2e
            java.lang.String r4 = "profile"
            java.lang.String r4 = r0.getString(r4, r3)
            java.lang.String r5 = "profile_last_check"
            long r1 = r0.getLong(r5, r1)
            goto L3a
        L2e:
            java.lang.String r4 = "group"
            java.lang.String r4 = r0.getString(r4, r3)
            java.lang.String r5 = "group_last_check"
            long r1 = r0.getLong(r5, r1)
        L3a:
            if (r4 == 0) goto L62
            org.telegram.tgnet.SerializedData r5 = new org.telegram.tgnet.SerializedData
            byte[] r4 = org.telegram.messenger.Utilities.hexToBytes(r4)
            r5.<init>(r4)
            r4 = 1
            int r6 = r5.readInt32(r4)     // Catch: java.lang.Throwable -> L5a
            org.telegram.tgnet.TLRPC$EmojiList r4 = org.telegram.tgnet.TLRPC$EmojiList.TLdeserialize(r5, r6, r4)     // Catch: java.lang.Throwable -> L5a
            org.telegram.tgnet.TLRPC$TL_emojiList r4 = (org.telegram.tgnet.TLRPC$TL_emojiList) r4     // Catch: java.lang.Throwable -> L5a
            if (r9 == 0) goto L55
            r8.profileAvatarConstructorDefault = r4     // Catch: java.lang.Throwable -> L58
            goto L61
        L55:
            r8.groupAvatarConstructorDefault = r4     // Catch: java.lang.Throwable -> L58
            goto L61
        L58:
            r3 = move-exception
            goto L5e
        L5a:
            r4 = move-exception
            r7 = r4
            r4 = r3
            r3 = r7
        L5e:
            org.telegram.messenger.FileLog.m99e(r3)
        L61:
            r3 = r4
        L62:
            if (r3 == 0) goto L74
            long r4 = java.lang.System.currentTimeMillis()
            long r4 = r4 - r1
            r1 = 86400000(0x5265c00, double:4.2687272E-316)
            int r1 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r1 > 0) goto L74
            boolean r1 = org.telegram.messenger.BuildVars.DEBUG_PRIVATE_VERSION
            if (r1 == 0) goto L8b
        L74:
            org.telegram.tgnet.TLRPC$TL_account_getDefaultProfilePhotoEmojis r1 = new org.telegram.tgnet.TLRPC$TL_account_getDefaultProfilePhotoEmojis
            r1.<init>()
            if (r3 == 0) goto L7f
            long r2 = r3.hash
            r1.hash = r2
        L7f:
            org.telegram.tgnet.ConnectionsManager r2 = r8.getConnectionsManager()
            org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda204 r3 = new org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda204
            r3.<init>()
            r2.sendRequest(r1, r3)
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.loadAvatarConstructor(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAvatarConstructor$223(final SharedPreferences sharedPreferences, final boolean z, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda94
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadAvatarConstructor$222(tLObject, sharedPreferences, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAvatarConstructor$222(TLObject tLObject, SharedPreferences sharedPreferences, boolean z) {
        if (tLObject instanceof TLRPC$TL_emojiList) {
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (z) {
                this.profileAvatarConstructorDefault = (TLRPC$TL_emojiList) tLObject;
                edit.putString("profile", Utilities.bytesToHex(serializedData.toByteArray()));
                edit.putLong("profile_last_check", System.currentTimeMillis());
            } else {
                this.groupAvatarConstructorDefault = (TLRPC$TL_emojiList) tLObject;
                edit.putString("group", Utilities.bytesToHex(serializedData.toByteArray()));
                edit.putLong("group_last_check", System.currentTimeMillis());
            }
            edit.apply();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadReplyIcons() {
        /*
            r8 = this;
            android.content.Context r0 = org.telegram.messenger.ApplicationLoader.applicationContext
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "replyicons_"
            r1.append(r2)
            int r2 = r8.currentAccount
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            java.lang.String r1 = "replyicons"
            r2 = 0
            java.lang.String r1 = r0.getString(r1, r2)
            java.lang.String r3 = "replyicons_last_check"
            r4 = 0
            long r3 = r0.getLong(r3, r4)
            if (r1 == 0) goto L4f
            org.telegram.tgnet.SerializedData r5 = new org.telegram.tgnet.SerializedData
            byte[] r1 = org.telegram.messenger.Utilities.hexToBytes(r1)
            r5.<init>(r1)
            r1 = 1
            int r6 = r5.readInt32(r1)     // Catch: java.lang.Throwable -> L47
            org.telegram.tgnet.TLRPC$EmojiList r1 = org.telegram.tgnet.TLRPC$EmojiList.TLdeserialize(r5, r6, r1)     // Catch: java.lang.Throwable -> L47
            org.telegram.tgnet.TLRPC$TL_emojiList r1 = (org.telegram.tgnet.TLRPC$TL_emojiList) r1     // Catch: java.lang.Throwable -> L47
            r8.replyIconsDefault = r1     // Catch: java.lang.Throwable -> L45
            goto L4e
        L45:
            r2 = move-exception
            goto L4b
        L47:
            r1 = move-exception
            r7 = r2
            r2 = r1
            r1 = r7
        L4b:
            org.telegram.messenger.FileLog.m99e(r2)
        L4e:
            r2 = r1
        L4f:
            if (r2 == 0) goto L61
            long r5 = java.lang.System.currentTimeMillis()
            long r5 = r5 - r3
            r3 = 86400000(0x5265c00, double:4.2687272E-316)
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 > 0) goto L61
            boolean r1 = org.telegram.messenger.BuildVars.DEBUG_PRIVATE_VERSION
            if (r1 == 0) goto L78
        L61:
            org.telegram.tgnet.TLRPC$TL_account_getDefaultBackgroundEmojis r1 = new org.telegram.tgnet.TLRPC$TL_account_getDefaultBackgroundEmojis
            r1.<init>()
            if (r2 == 0) goto L6c
            long r2 = r2.hash
            r1.hash = r2
        L6c:
            org.telegram.tgnet.ConnectionsManager r2 = r8.getConnectionsManager()
            org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda203 r3 = new org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda203
            r3.<init>()
            r2.sendRequest(r1, r3)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MediaDataController.loadReplyIcons():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyIcons$225(final SharedPreferences sharedPreferences, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MediaDataController$$ExternalSyntheticLambda93
            @Override // java.lang.Runnable
            public final void run() {
                MediaDataController.this.lambda$loadReplyIcons$224(tLObject, sharedPreferences);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadReplyIcons$224(TLObject tLObject, SharedPreferences sharedPreferences) {
        if (tLObject instanceof TLRPC$TL_emojiList) {
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            this.replyIconsDefault = (TLRPC$TL_emojiList) tLObject;
            edit.putString("replyicons", Utilities.bytesToHex(serializedData.toByteArray()));
            edit.putLong("replyicons_last_check", System.currentTimeMillis());
            edit.apply();
        }
    }
}
