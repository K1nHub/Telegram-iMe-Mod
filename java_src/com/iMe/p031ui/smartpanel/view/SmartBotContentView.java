package com.iMe.p031ui.smartpanel.view;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.p031ui.smartpanel.SmartBotsView;
import com.iMe.p031ui.smartpanel.adapter.SmartBotContentAdapter;
import com.iMe.p031ui.smartpanel.model.SmartBotTab;
import com.iMe.p031ui.smartpanel.model.SmartPanelTabContent;
import com.iMe.p031ui.smartpanel.model.content.TabBotAnswerItem;
import com.iMe.p031ui.smartpanel.model.content.TabBotMediaAnswerItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p044ui.Components.ExtendedGridLayoutManager;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.p044ui.Components.Size;
import org.telegram.p044ui.PhotoViewer;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeImageSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$WebDocument;
/* compiled from: SmartBotContentView.kt */
/* renamed from: com.iMe.ui.smartpanel.view.SmartBotContentView */
/* loaded from: classes3.dex */
public final class SmartBotContentView extends FrameLayout implements SmartBotContentAdapter.OnLoadGifListener {
    private final SmartBotTab content;
    private BotResponseType currentBotResponseType;
    private final SmartBotContentView$gifContextProvider$1 gifContextProvider;
    private final RecyclerListView listView;
    private final SmartBotContentAdapter listViewAdapter;
    private final ExtendedGridLayoutManager listViewLayoutManager;
    private final TextView textEmptyGif;

    /* compiled from: SmartBotContentView.kt */
    /* renamed from: com.iMe.ui.smartpanel.view.SmartBotContentView$BotResponseType */
    /* loaded from: classes3.dex */
    public enum BotResponseType {
        TEXT,
        GIF
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.iMe.ui.smartpanel.view.SmartBotContentView$gifContextProvider$1] */
    public SmartBotContentView(final Context context, SmartBotTab content, BotResponseType currentBotResponseType, final SmartBotsView.Listener listener, long j) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(currentBotResponseType, "currentBotResponseType");
        this.content = content;
        this.currentBotResponseType = currentBotResponseType;
        SmartBotContentAdapter smartBotContentAdapter = new SmartBotContentAdapter(j, this);
        this.listViewAdapter = smartBotContentAdapter;
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        TextView textView = new TextView(context);
        this.textEmptyGif = textView;
        ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context) { // from class: com.iMe.ui.smartpanel.view.SmartBotContentView$listViewLayoutManager$1
            private final Size size = new Size();

            @Override // org.telegram.p044ui.Components.ExtendedGridLayoutManager
            protected Size getSizeForItem(int i) {
                RecyclerListView recyclerListView2;
                RecyclerListView recyclerListView3;
                Size size = this.size;
                recyclerListView2 = this.listView;
                size.width = recyclerListView2.getWidth();
                Size size2 = this.size;
                recyclerListView3 = this.listView;
                size2.height = recyclerListView3.getWidth() / 2.0f;
                SmartPanelTabContent item = this.listViewAdapter.getItem(i);
                TLRPC$BotInlineResult media = item instanceof TabBotMediaAnswerItem ? ((TabBotMediaAnswerItem) item).getMedia() : null;
                if (media != null) {
                    TLRPC$Document tLRPC$Document = media.document;
                    int i2 = 0;
                    if (tLRPC$Document != null) {
                        TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90);
                        Size size3 = this.size;
                        size3.width = closestPhotoSizeWithSize != null ? closestPhotoSizeWithSize.f1464w : 100;
                        size3.height = closestPhotoSizeWithSize != null ? closestPhotoSizeWithSize.f1463h : 100;
                        int size4 = media.document.attributes.size();
                        while (i2 < size4) {
                            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = media.document.attributes.get(i2);
                            if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo)) {
                                Size size5 = this.size;
                                size5.width = tLRPC$DocumentAttribute.f1444w;
                                size5.height = tLRPC$DocumentAttribute.f1443h;
                                break;
                            }
                            i2++;
                        }
                    } else {
                        TLRPC$WebDocument tLRPC$WebDocument = media.content;
                        if (tLRPC$WebDocument != null) {
                            int size6 = tLRPC$WebDocument.attributes.size();
                            while (i2 < size6) {
                                TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = media.content.attributes.get(i2);
                                if ((tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeVideo)) {
                                    Size size7 = this.size;
                                    size7.width = tLRPC$DocumentAttribute2.f1444w;
                                    size7.height = tLRPC$DocumentAttribute2.f1443h;
                                    break;
                                }
                                i2++;
                            }
                        } else {
                            TLRPC$WebDocument tLRPC$WebDocument2 = media.thumb;
                            if (tLRPC$WebDocument2 != null) {
                                int size8 = tLRPC$WebDocument2.attributes.size();
                                while (i2 < size8) {
                                    TLRPC$DocumentAttribute tLRPC$DocumentAttribute3 = media.thumb.attributes.get(i2);
                                    if ((tLRPC$DocumentAttribute3 instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute3 instanceof TLRPC$TL_documentAttributeVideo)) {
                                        Size size9 = this.size;
                                        size9.width = tLRPC$DocumentAttribute3.f1444w;
                                        size9.height = tLRPC$DocumentAttribute3.f1443h;
                                        break;
                                    }
                                    i2++;
                                }
                            } else {
                                TLRPC$Photo tLRPC$Photo = media.photo;
                                if (tLRPC$Photo != null) {
                                    ArrayList<TLRPC$PhotoSize> arrayList = tLRPC$Photo.sizes;
                                    Integer photoSize = AndroidUtilities.photoSize;
                                    Intrinsics.checkNotNullExpressionValue(photoSize, "photoSize");
                                    TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, photoSize.intValue());
                                    if (closestPhotoSizeWithSize2 != null) {
                                        Size size10 = this.size;
                                        size10.width = closestPhotoSizeWithSize2.f1464w;
                                        size10.height = closestPhotoSizeWithSize2.f1463h;
                                    }
                                }
                            }
                        }
                    }
                }
                return this.size;
            }
        };
        this.listViewLayoutManager = extendedGridLayoutManager;
        this.gifContextProvider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: com.iMe.ui.smartpanel.view.SmartBotContentView$gifContextProvider$1
            /* JADX WARN: Removed duplicated region for block: B:18:0x0080 A[LOOP:0: B:8:0x0030->B:18:0x0080, LOOP_END] */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0055 A[SYNTHETIC] */
            @Override // org.telegram.p044ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p044ui.PhotoViewer.PhotoViewerProvider
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.telegram.p044ui.PhotoViewer.PlaceProviderObject getPlaceForPhoto(org.telegram.messenger.MessageObject r5, org.telegram.tgnet.TLRPC$FileLocation r6, int r7, boolean r8) {
                /*
                    r4 = this;
                    r5 = 0
                    if (r7 < 0) goto L83
                    com.iMe.ui.smartpanel.view.SmartBotContentView r6 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.this
                    com.iMe.ui.smartpanel.adapter.SmartBotContentAdapter r6 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.access$getListViewAdapter$p(r6)
                    java.util.List r6 = r6.getMediaContent()
                    int r6 = r6.size()
                    if (r7 < r6) goto L14
                    goto L83
                L14:
                    com.iMe.ui.smartpanel.view.SmartBotContentView r6 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.this
                    com.iMe.ui.smartpanel.adapter.SmartBotContentAdapter r6 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.access$getListViewAdapter$p(r6)
                    int r6 = r6.getItemCount()
                    com.iMe.ui.smartpanel.view.SmartBotContentView r8 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.this
                    com.iMe.ui.smartpanel.adapter.SmartBotContentAdapter r8 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.access$getListViewAdapter$p(r8)
                    java.util.List r8 = r8.getMediaContent()
                    java.lang.Object r7 = r8.get(r7)
                    org.telegram.tgnet.TLRPC$BotInlineResult r7 = (org.telegram.tgnet.TLRPC$BotInlineResult) r7
                    r8 = 0
                    r0 = r8
                L30:
                    if (r0 >= r6) goto L83
                    com.iMe.ui.smartpanel.view.SmartBotContentView r1 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.this
                    org.telegram.ui.Components.RecyclerListView r1 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.access$getListView$p(r1)
                    android.view.View r1 = r1.getChildAt(r0)
                    boolean r2 = r1 instanceof org.telegram.p044ui.Cells.ContextLinkCell
                    if (r2 == 0) goto L52
                    r2 = r1
                    org.telegram.ui.Cells.ContextLinkCell r2 = (org.telegram.p044ui.Cells.ContextLinkCell) r2
                    org.telegram.tgnet.TLRPC$BotInlineResult r3 = r2.getResult()
                    boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r7)
                    if (r3 == 0) goto L52
                    org.telegram.messenger.ImageReceiver r2 = r2.getPhotoImage()
                    goto L53
                L52:
                    r2 = r5
                L53:
                    if (r2 == 0) goto L80
                    r5 = 2
                    int[] r5 = new int[r5]
                    r1.getLocationInWindow(r5)
                    org.telegram.ui.PhotoViewer$PlaceProviderObject r6 = new org.telegram.ui.PhotoViewer$PlaceProviderObject
                    r6.<init>()
                    r7 = r5[r8]
                    r6.viewX = r7
                    r7 = 1
                    r5 = r5[r7]
                    r6.viewY = r5
                    com.iMe.ui.smartpanel.view.SmartBotContentView r5 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.this
                    org.telegram.ui.Components.RecyclerListView r5 = com.iMe.p031ui.smartpanel.view.SmartBotContentView.access$getListView$p(r5)
                    r6.parentView = r5
                    r6.imageReceiver = r2
                    org.telegram.messenger.ImageReceiver$BitmapHolder r5 = r2.getBitmapSafe()
                    r6.thumb = r5
                    int[] r5 = r2.getRoundRadius()
                    r6.radius = r5
                    return r6
                L80:
                    int r0 = r0 + 1
                    goto L30
                L83:
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.smartpanel.view.SmartBotContentView$gifContextProvider$1.getPlaceForPhoto(org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$FileLocation, int, boolean):org.telegram.ui.PhotoViewer$PlaceProviderObject");
            }

            @Override // org.telegram.p044ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p044ui.PhotoViewer.PhotoViewerProvider
            public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2, String str, boolean z3) {
                SmartBotsView.Listener listener2 = listener;
                if (listener2 != null) {
                    listener2.sendChosenGif(i, SmartBotContentView.this.listViewAdapter.getGifBotId(), SmartBotContentView.this.listViewAdapter.getGifBotName());
                }
            }
        };
        smartBotContentAdapter.setHasStableIds(true);
        smartBotContentAdapter.setTextData(content, this.currentBotResponseType);
        textView.setText(LocaleController.getInternalString(C3295R.string.chat_send_panel_neurobot_not_have_gifs));
        textView.setTextColor(ContextCompat.getColor(context, C3295R.C3296color.gray_message));
        textView.setTextSize(14.0f);
        textView.setVisibility(8);
        recyclerListView.setAdapter(smartBotContentAdapter);
        recyclerListView.setLayoutManager(extendedGridLayoutManager);
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.iMe.ui.smartpanel.view.SmartBotContentView.1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                outRect.left = 0;
                outRect.right = 0;
                outRect.top = 0;
                outRect.bottom = 0;
                if (Intrinsics.areEqual(parent.getLayoutManager(), SmartBotContentView.this.listViewLayoutManager)) {
                    int childAdapterPosition = parent.getChildAdapterPosition(view);
                    if (SmartBotContentView.this.listViewAdapter.getItem(childAdapterPosition) instanceof TabBotMediaAnswerItem) {
                        outRect.top = AndroidUtilities.m55dp(2.0f);
                        outRect.right = SmartBotContentView.this.listViewLayoutManager.isLastInRow(childAdapterPosition) ? 0 : AndroidUtilities.m55dp(2.0f);
                    }
                }
            }
        });
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.ui.smartpanel.view.SmartBotContentView$$ExternalSyntheticLambda0
            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SmartBotContentView._init_$lambda$1(SmartBotContentView.this, listener, view, i);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.ui.smartpanel.view.SmartBotContentView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                int findLastVisibleItemPosition = SmartBotContentView.this.listViewLayoutManager.findLastVisibleItemPosition();
                if ((findLastVisibleItemPosition == -1 ? 0 : findLastVisibleItemPosition) <= 0 || findLastVisibleItemPosition <= SmartBotContentView.this.listViewAdapter.getItemCount() - 5) {
                    return;
                }
                SmartBotContentView.this.listViewAdapter.searchGIFsForNextOffset();
            }
        });
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.iMe.ui.smartpanel.view.SmartBotContentView.4
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i) {
                if (i >= SmartBotContentView.this.listViewAdapter.getItemCount() - 1 || !(SmartBotContentView.this.listViewAdapter.getItem(i) instanceof TabBotMediaAnswerItem)) {
                    return 100;
                }
                return SmartBotContentView.this.listViewLayoutManager.getSpanSizeForItem(i);
            }
        });
        addView(textView, LayoutHelper.createFrame(-2, -2, 17));
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1, 17));
    }

    /* compiled from: SmartBotContentView.kt */
    /* renamed from: com.iMe.ui.smartpanel.view.SmartBotContentView$Companion */
    /* loaded from: classes3.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(SmartBotContentView this$0, SmartBotsView.Listener listener, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i < this$0.listViewAdapter.getMediaContentOffset()) {
            SmartPanelTabContent smartPanelTabContent = this$0.listViewAdapter.getTextContent().get(i);
            TabBotAnswerItem tabBotAnswerItem = smartPanelTabContent instanceof TabBotAnswerItem ? (TabBotAnswerItem) smartPanelTabContent : null;
            if (tabBotAnswerItem == null || listener == null) {
                return;
            }
            listener.onTextAnswerSelected(tabBotAnswerItem, i);
            return;
        }
        List<TLRPC$BotInlineResult> mediaContent = this$0.listViewAdapter.getMediaContent();
        int mediaContentOffset = i - this$0.listViewAdapter.getMediaContentOffset();
        if (listener != null) {
            listener.onGifAnswerSelected(this$0.gifContextProvider, mediaContent, mediaContentOffset);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.listViewAdapter.onDestroy();
        super.onDetachedFromWindow();
    }

    @Override // com.iMe.p031ui.smartpanel.adapter.SmartBotContentAdapter.OnLoadGifListener
    public void onLoadGifComplete(int i) {
        updateEmptyGifText(i);
    }

    public final void setBotResponseType(BotResponseType botResponseType) {
        Intrinsics.checkNotNullParameter(botResponseType, "botResponseType");
        this.currentBotResponseType = botResponseType;
        this.listViewAdapter.setTextData(this.content, botResponseType);
    }

    private final void updateEmptyGifText(int i) {
        if (this.currentBotResponseType != BotResponseType.GIF) {
            this.textEmptyGif.setVisibility(8);
        } else if (i == 0) {
            this.textEmptyGif.setVisibility(0);
        } else {
            this.textEmptyGif.setVisibility(8);
        }
    }
}
