/** source/controllers/posts.ts */
import { Request, Response, NextFunction } from 'express';

import {
    screen,
} from '../../api';

import { Screen } from '../../generated/models';

const getProductsScreen = (req: Request, res: Response<Screen>, next: NextFunction) => res.status(200).json(
    screen({
        id: 'screen-products',
        type: 'LIST',
        content: {
            refreshable: true,
            sections: [
                {
                    components: [
                        {
                            id: 'component-0',
                            type: 'BASIC',
                            content: 'Hello world',
                        },
                    ],
                },
            ],
        },
    }),
);

const getProductScreen = (req: Request, res: Response<Screen>, next: NextFunction) => res.status(200).json(
    screen({
        id: 'screen-product',
        type: 'LIST',
        content: {
            refreshable: true,
            sections: [
                {
                    components: [
                        {
                            id: 'component-1',
                            type: 'BASIC',
                            content: 'Hello world',
                        },
                    ],
                },
            ],
        },
    }),
);

// const getHome = (req: Request, res: Response, next: NextFunction) => getLibrary(req, res, next);

export default { getProductsScreen, getProductScreen };
